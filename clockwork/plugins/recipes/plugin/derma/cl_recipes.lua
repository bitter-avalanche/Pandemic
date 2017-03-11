local PANEL = {};

function PANEL:Init()
	local categories = {};
	local items = {};

	self:SetTitle("");
	self:SetSize(Clockwork.menu:GetWidth(), Clockwork.menu:GetHeight());
	self:SetSize(Clockwork.menu:GetWidth(), Clockwork.menu:GetHeight());
	self:MakePopup();
	self:SetSizable(false);
	self:SetDeleteOnClose(false);
	self:SetDraggable(false);
	self:ShowCloseButton(false);

	self.panelList = vgui.Create("cwPanelList", self);
 	self.panelList:SetPadding(2);
 	self.panelList:SetSpacing(2);
 	self.panelList:SizeToContents();
 	self.panelList:SetPos(0, 0);
 	self.panelList:StretchToParent(4, 28, 4, 4);
	self.panelList:EnableVerticalScrollbar();

	self:Rebuild();
end;

function PANEL:Rebuild()
	self.panelList:Clear();

	local categories = {};
	local items = {};
	local empty = {};

	for k, v in pairs(Clockwork.recipe:GetAll()) do
		items[#items + 1] = v;
		categories[v.category] = v.category;
	end;

	table.sort(items, function(a, b) 
		return a.name < b.name;
	end);

	table.sort(categories, function(a, b) 
		return a < b;
	end);

	local label = vgui.Create("cwInfoText", self);
		label:SetText("Some recipes might not take the required items from you.");
		label:SetInfoColor("blue");
	self.panelList:AddItem(label);

	for k, v in pairs(categories) do
		local collapsibleCategory = Clockwork.kernel:CreateCustomCategoryPanel(v, self.panelList);
		self.panelList:AddItem(collapsibleCategory);

		local categoryList = vgui.Create("DPanelList", collapsibleCategory);
			categoryList:EnableHorizontal(true);
			categoryList:SetAutoSize(true);
			categoryList:SetPadding(4);
			categoryList:SetSpacing(4);
		collapsibleCategory:SetContents(categoryList);
		
		local count = 0;

		for k3, v3 in pairs(items) do
			if (v3.category == v and Clockwork.plugin:Call("PlayerCanSeeRecipe", v3)) then
				count = count + 1;
				local SpawnIcon = Clockwork.kernel:CreateMarkupToolTip(vgui.Create("cwSpawnIcon", self));
				SpawnIcon:SetSize(40, 40);
				SpawnIcon:SetModel(v3.model);
				SpawnIcon:SetToolTip("");

				local informationColor = Clockwork.option:GetColor("information");
				local toolTip = "";
				local recipe = v3.name;
				local clientInventory = Clockwork.inventory:GetClient();
			
				toolTip = Clockwork.kernel:MarkupTextWithColor("[Information]", informationColor);
				toolTip = toolTip.."\n"..recipe;

				if (v3.description) then
					toolTip = toolTip.."\n"..v3.description;
				end;

				Clockwork.plugin:Call("PreRecipeRequired", v3, toolTip);

				toolTip = toolTip.."\n"..Clockwork.kernel:MarkupTextWithColor("[Requires]", informationColor);

				for k2, v2 in pairs(v3.required) do
					local realID = k2;

					if (Clockwork.item:FindByID(k2)) then
						realID = Clockwork.item:FindByID(k2)("uniqueID");
					end;

					local itemCount = table.Count(clientInventory[realID] or empty);

					if (itemCount >= v2) then
						if (v2 != 1) then
							toolTip = toolTip..Clockwork.kernel:MarkupTextWithColor("\n"..itemCount.."/"..v2, Color(0, 255, 0)).." "..Clockwork.kernel:Pluralize(Clockwork.item:FindByID(k2)("name"));
						else
							toolTip = toolTip..Clockwork.kernel:MarkupTextWithColor("\n"..itemCount.."/"..v2, Color(0, 255, 0)).." "..Clockwork.item:FindByID(k2)("name");
						end;
					else
						if (v2 == 1) then
							toolTip = toolTip..Clockwork.kernel:MarkupTextWithColor("\n"..itemCount.."/"..v2, Color(255, 0, 0)).." "..Clockwork.item:FindByID(k2)("name");
						else
							toolTip = toolTip..Clockwork.kernel:MarkupTextWithColor("\n"..itemCount.."/"..v2, Color(255, 0, 0)).." "..Clockwork.kernel:Pluralize(Clockwork.item:FindByID(k2)("name"));
						end;
					end;
				end;

				if (v3.requiredEnts) then
					for k2, v2 in pairs(v3.requiredEnts) do
						local name = v2;
						local entInRadius = false;

						for k4, v4 in pairs(ents.FindByClass(k2)) do
							name = v4.PrintName or v4:GetClass();

							if LocalPlayer():GetPos():Distance(v4:GetPos()) <= Clockwork.config:Get("crafting_radius"):Get() then
								entInRadius = true;
							end;
						end;

						if entInRadius then
							toolTip = toolTip..Clockwork.kernel:MarkupTextWithColor("\n"..name, Color(0, 255, 0));
						else
							toolTip = toolTip..Clockwork.kernel:MarkupTextWithColor("\n"..name, Color(255, 0, 0));
						end;
					end;
				end;

				if (v3.cost) then
					local cost = v3.cost;
					local cash = Clockwork.player:GetCash();
					local name_cash = " "..string.lower(Clockwork.option:GetKey("name_cash"));

					if (cash >= cost) then
						toolTip = toolTip..Clockwork.kernel:MarkupTextWithColor("\n"..cash.."/"..cost..name_cash, Color(0, 255, 0));
					else
						toolTip = toolTip..Clockwork.kernel:MarkupTextWithColor("\n"..cash.."/"..cost..name_cash, Color(255, 0, 0));
					end;
				end;

				if (v3.requiredAttribs) then
					local playerAttribs = {};
					local attribs = Clockwork.attribute:GetAll()
					
					for k,v in pairs(Clockwork.attributes.stored) do
						playerAttribs[k] = v;
					end;

					for k2, v2 in pairs(v3.requiredAttribs) do
						for k4, v4 in pairs(playerAttribs) do
							local attribName = attribs[k4].name;
							local percentAmount = math.Round(v4.amount/attribs[k4].maximum*100);
							local percentRequired = math.Round(v2/attribs[k4].maximum*100);

							if (string.lower(k2) == string.lower(attribName)) then
								if (v4.amount >= v2) then
									toolTip = toolTip..Clockwork.kernel:MarkupTextWithColor("\n"..percentAmount.."%/"..percentRequired.."% "..attribName, Color(0, 255, 0));
								else
									toolTip = toolTip..Clockwork.kernel:MarkupTextWithColor("\n"..percentAmount.."%/"..percentRequired.."% "..attribName, Color(255, 0, 0));
								end;
							end;
						end;
					end;
				end;

				Clockwork.plugin:Call("PostRecipeRequired", v3, toolTip);
				Clockwork.plugin:Call("PreRecipeOutputs", v3, toolTip);

				toolTip = toolTip.."\n"..Clockwork.kernel:MarkupTextWithColor("[Outputs]", informationColor);

				for k2, v2 in pairs(v3.output) do
					if (v2 != 1) then
						toolTip = toolTip.."\n"..v2.." "..Clockwork.kernel:Pluralize(Clockwork.item:FindByID(k2)("name"));
					else
						toolTip = toolTip.."\n"..v2.." "..Clockwork.item:FindByID(k2)("name");
					end;
				end;

				Clockwork.plugin:Call("PostRecipeOutputs", v3, toolTip);
				SpawnIcon:SetMarkupToolTip(toolTip);

				function SpawnIcon.DoClick()
					Clockwork.plugin:Call("RecipeClicked", v3);
					Clockwork.datastream:Start("Craft", v3.name);
					
					timer.Simple(1, function()
						self:Rebuild();
					end);
				end;

				categoryList:AddItem(SpawnIcon);
			end;
		end;

		if (count == 0) then
			collapsibleCategory:Remove();
		end;
	end;
end;

-- Called when the menu is opened.
function PANEL:OnMenuOpened()
	if (Clockwork.menu:IsPanelActive(self)) then
		self:Rebuild();
	end;
end;

-- Called when the panel is selected.
function PANEL:OnSelected() self:Rebuild(); end;

-- Called when the layout should be performed.
function PANEL:PerformLayout(w, h)
	self.panelList:StretchToParent(4, 28, 4, 4);
	self:SetSize(w, math.min(self.panelList.pnlCanvas:GetTall() + 32, ScrH() * 0.75));
end;

-- Called when the panel is painted.
function PANEL:Paint(w, h)
	derma.SkinHook("Paint", "Frame", self, w, h);
	
	return true;
end;

-- Called each frame.
function PANEL:Think()
	self:InvalidateLayout(true);
end;

vgui.Register("cwRecipes", PANEL, "DFrame");