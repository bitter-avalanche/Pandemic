local Clockwork = Clockwork;
local PLUGIN = PLUGIN;

Clockwork.recipe = Clockwork.kernel:NewLibrary("Recipe");
Clockwork.recipe.stored = {};

local RECIPE = {__index = RECIPE};

-- A function to register a new recipe.
function RECIPE:Register()
	return Clockwork.recipe:Register(self, self.name);
end;

-- A function to add an item to a recipe's requirements.
function RECIPE:Require(uniqueID, amountRequired, amountToTake)
	if (!uniqueID) then return; end;
	local realID = string.lower(string.gsub(uniqueID, "%-", "%%%-"));

	if !(Clockwork.item:FindByID(realID)) then
		for k, v in pairs(Clockwork.item:GetAll()) do
			if (string.match(string.lower(v.name), realID)) then
				realID = v("uniqueID");
			else
				return;
			end;
		end;
	else
		realID = Clockwork.item:FindByID(realID)("uniqueID");
	end;

	self.required[realID] = amountRequired or 1;
	self.take[realID] = amountToTake or amountRequired or 1;
end;

-- A function to require a nearby entity for the recipe.
function RECIPE:RequireEntity(class, name)
	if (!class) then return; end;

	if (!self.requiredEnts) then
		self.requiredEnts = {};
	end;

	self.requiredEnts[class] = name or class;
end;

function RECIPE:RequireAttrib(attrib, value)
	if (!attrib) then return; end;

	if (!self.requiredAttribs) then
		self.requiredAttribs = {};
	end;

	self.requiredAttribs[attrib] = value;
end;

-- A function to require a player to be in a certain faction.
function RECIPE:Factions(...)
	self.factions = {...};
    
    for k, v in pairs(self.factions) do
		self.factions[k] = string.lower(v);
	end;
end;

-- A function to add an item to a recipe's output.
function RECIPE:Output(uniqueID, amount)
	if (!uniqueID) then return; end;
	local realID = string.lower(string.gsub(uniqueID, "%-", "%%%-"));

	if !(Clockwork.item:FindByID(realID)) then
		for k, v in pairs(Clockwork.item:GetAll()) do
			if (string.match(string.lower(v.name), realID)) then
				realID = v("uniqueID");
			else
				return;
			end;
		end;
	else
		realID = Clockwork.item:FindByID(realID)("uniqueID");
	end;

	self.output[realID] = amount or 1;
end;

if (SERVER) then
	-- A function to craft the recipe.
	function RECIPE:Craft(player)
		for k, v in pairs(self.required) do
			local name = Clockwork.item:FindByID(k)("name");
			local itemsList = Clockwork.inventory:FindItemsByName(player:GetInventory(), k, name);
		
			if (!itemsList or table.Count(itemsList) < v) then
				Clockwork.plugin:Call("PlayerFailedToCraftRecipe", player, self);

				return;
			end;
		end;

		if (Clockwork.plugin:Call("ShouldPlayerCraftRecipe", player, self)) then
			Clockwork.plugin:Call("PlayerCraftRecipe", player, self);
		else
			Clockwork.plugin:Call("PlayerFailedToCraftRecipe", player, self);
		end;
	end;

	local playerMeta = FindMetaTable("Player");

	function playerMeta:Craft(name)
		local RECIPE = Clockwork.recipe:FindByID(name);

		if (!RECIPE) then return; end;

		return RECIPE:Craft(self);
	end;
end;

-- A function to register a new recipe.
function Clockwork.recipe:Register(data, name)
	local realName = string.gsub(name, "%s", "");
	local uniqueID = string.lower(realName);
	
	self.stored[uniqueID] = data;
	
	return self.stored[uniqueID];
end;

-- A function to create a new recipe.
function Clockwork.recipe:New(name)
	local object = Clockwork.kernel:NewMetaTable(RECIPE);
		object.name = name or "Unknown";
		object.required = {};
		object.output = {};
		object.take = {};
		object.category = "Miscellaneous";
		object.model = "models/props_lab/clipboard.mdl"
		object.description = "An undescribed recipe.";
	return object;
end;

-- A function to find a recipe by an identifier.
function Clockwork.recipe:FindByID(identifier)
	return self.stored[string.lower(string.gsub(identifier, "%s", ""))];
end;

-- A function to get all recipes.
function Clockwork.recipe:GetAll()
	return self.stored;
end;

--[[
	EXAMPLE:

	local RECIPE = Clockwork.recipe:New("Example");
		RECIPE:Require("ingredient1");
		RECIPE:Require("ingredient2", 3);
		RECIPE:Require("ingredient3");
		RECIPE:Require("ingredient4", 2);
		RECIPE:Output("final_item");
		RECIPE.description = "An example recipe!";
		RECIPE.model = "models/error.mdl";
	RCP_EXAMPLE = RECIPE:Register();
--]]