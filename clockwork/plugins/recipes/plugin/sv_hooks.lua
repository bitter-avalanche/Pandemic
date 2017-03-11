local Clockwork = Clockwork;
local PLUGIN = PLUGIN;
PLUGIN.format = [[local RECIPE = Clockwork.recipe:New(%q);
	RECIPE.description = %q;
	RECIPE.model = %q;
%sRECIPE:Register();]];

-- Called when a player crafts a recipe.
function Clockwork:PlayerCraftRecipe(player, recipeTable)
	local message = "Success! Crafted the "..recipeTable.name.." recipe!";

	for k, v in pairs(recipeTable.required) do
		local amountToTake = recipeTable.take[k];
		
		if (amountToTake) then
			if (amountToTake > 0) then
				for i = 1, amountToTake do
					player:TakeItem(player:FindItemByID(k));
				end;
			end;
		else
			for i = 1, v do
				player:TakeItem(player:FindItemByID(k));
			end;
		end;
	end;

	for k, v in pairs(recipeTable.output) do
		local itemTable = Clockwork.item:FindByID(k);

		for i = 1, v do
			itemTable = Clockwork.item:CreateInstance(k);
			player:GiveItem(itemTable, true);
		end;
	end;

	if (recipeTable.OnSuccess) then
		local returnedMessage = recipeTable:OnSuccess(player);

		player:Notify(returnedMessage or message);
	else
		player:Notify(message);
	end;

	Clockwork.plugin:Call("PlayerCraftedRecipe", player, recipeTable);
end;

-- Called when a player fails to craft a recipe.
function Clockwork:PlayerFailedToCraftRecipe(player, recipeTable)
	local message = "You do not meet the requirements for this recipe!";

	if (recipeTable.OnFailure) then
		local returnedMessage = recipeTable:OnFailure(player);

		player:Notify(returnedMessage or message);
	else
		player:Notify(message);
	end;
end;

-- Called to check if a player should craft a recipe.
function Clockwork:ShouldPlayerCraftRecipe(player, recipeTable)
	local requiredEnts = recipeTable.requiredEnts;
	local cost = recipeTable.cost;
	local requiredAttribs = recipeTable.requiredAttribs;

	if (requiredEnts) then
		for k, v in pairs(requiredEnts) do
			for k2, v2 in pairs(ents.FindByClass(k)) do
				if !(player:GetPos():Distance(v2:GetPos()) <= Clockwork.config:Get("crafting_radius"):Get()) then
					return false;
				end;
			end;
		end;
	end;

	if (cost) then
		if (!Clockwork.player:CanAfford(player, cost)) then
			return false;
		else
			player:GiveCash(-cost);
			return true;
		end;
	end;

	if (requiredAttribs) then
		local playerAttribs = player:GetAttributes();

		for k, v in pairs(requiredAttribs) do
			for k2, v2 in pairs(playerAttribs) do
				local attribName = self.attribute:GetAll()[k2].name;

				if (string.lower(k) == string.lower(attribName)) then
					if (v2.amount < v) then
						return false;
					end;
				end;
			end;
		end;
	end;

	return true;
end;

-- Called just after a player has crafted a recipe.
function Clockwork:PlayerCraftedRecipe(player, recipeTable) end;

-- Called just after data should be saved.
function PLUGIN:PostSaveData()
	local benches = {};
	
	for k, v in pairs(ents.FindByClass("cw_workbench")) do
		benches[#benches + 1] = {
			angles = v:GetAngles(),
			position = v:GetPos()
		};
	end;
	
	Clockwork.kernel:SaveSchemaData("plugins/workbenches/"..game.GetMap(), benches);
end;

-- Called when Clockwork has loaded all of the entities.
function PLUGIN:ClockworkInitPostEntity()
	local benches = Clockwork.kernel:RestoreSchemaData("plugins/workbenches/"..game.GetMap());
	
	for k, v in pairs(benches) do
		local entity = ents.Create("cw_workbench");
		
		entity:SetPos(v.position);
		entity:Spawn();
		
		if (IsValid(entity)) then
			entity:SetAngles(v.angles);
		end;
	end;
end;

Clockwork.datastream:Hook("Craft", function(player, data)
	player:Craft(data);
end);

Clockwork.datastream:Hook("CreateRecipe", function(player, data)
	if (!player:IsSuperAdmin()) then return; end;

	local sanitized = string.lower(string.gsub(data.name, "[^a-zA-Z0-9\\.\\-]", ""), " ", "_");
	local path = "gamemodes/"..Clockwork.kernel:GetSchemaFolder("recipes").."/sh_"..sanitized..".lua";
	local contents = "";

	for k, v in pairs(data.required) do
		contents = contents..string.format("\tRECIPE:Require(%q, %d, %d);\n", k, v, data.take[k]);
	end;

	for k, v in pairs(data.output) do
		contents = contents..string.format("\tRECIPE:Output(%q, %d);\n", k, v);
	end;

	Clockwork.file:Delete(path);
	Clockwork.file:Write(path, string.format(PLUGIN.format, data.name, data.description, data.model, contents));

	if (Clockwork.file:Exists(path)) then
		player:Notify(data.name.." recipe successfully created! (sh_"..sanitized..")");

		return;
	end;

	player:Notify("Something went wrong trying to create the recipe file!");
end);