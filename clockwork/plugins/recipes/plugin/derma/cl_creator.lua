local Clockwork = Clockwork;
local pairs = pairs;
local ScrH = ScrH;
local ScrW = ScrW;
local table = table;
local vgui = vgui;

local PANEL = {};

-- Called when the panel is initialized.
function PANEL:Init()
	self:SetSize(Clockwork.menu:GetWidth(), Clockwork.menu:GetHeight());
	self.required = {}; self.take = {}; self.output = {};
	
	self.allItems = vgui.Create("cwPanelList", self);
	self.allItems:EnableVerticalScrollbar();
	self.allItems:SetPadding(2);

	self.requiredItems = vgui.Create("cwPanelList", self);
	self.requiredItems:EnableVerticalScrollbar();
	self.requiredItems:SetPadding(2);

	self.outputItems = vgui.Create("cwPanelList", self);
	self.outputItems:EnableVerticalScrollbar();
	self.outputItems:SetPadding(2);

	self.textbox = Clockwork.kernel:CreateMarkupToolTip(vgui.Create("DTextEntry", self));
	self.textbox:SetToolTip("What is the model this recipe should display in the menu?");

	self.generate = vgui.Create("DButton", self);
	self.generate:SetText("Generate");

	self.clear = vgui.Create("DButton", self);
	self.clear:SetText("Clear");

	function self.generate.DoClick()
		if (table.Count(self.required) == 0 or table.Count(self.output) == 0) then
			Derma_Query("You must require and output at least one item!", "", "OK");

			return;
		end;

		if (self.textbox:GetValue() == "") then
			Derma_Query("The recipe must have a model!", "", "OK");

			return;
		end;

		Derma_StringRequest("", "What would you like the name of this recipe to be?", "", function(name)
			if (name == "") then
				Derma_Query("You didn't specify a name!", "", "OK");

				return;
			end;

			Derma_StringRequest("", "What would you like the description of this recipe to be?", "", function(description)
				if (description == "") then
					Derma_Query("You didn't specify a description!", "", "OK");

					return;
				end;

				Clockwork.datastream:Start("CreateRecipe", {model = self.textbox:GetValue(), name = name, description = description, required = self.required, take = self.take, output = self.output});
			end);
		end);
	end;

	function self.clear.DoClick()
		Derma_Query("Are you sure you want to clear this recipe?", "", "Yes", function()
			self.textbox:SetValue("");
			self.requiredList:Clear();
			self.outputList:Clear();
			self.required = {}; self.take = {}; self.output = {};
		end, "No");
	end;
		
	self:Rebuild();
end;

-- A function to rebuild the panel.
function PANEL:Rebuild()
	local requiredCollapse = Clockwork.kernel:CreateCustomCategoryPanel("Required Items", self.requiredItems);
	local outputCollapse = Clockwork.kernel:CreateCustomCategoryPanel("Output Items", self.outputItems);
	local informationColor = Clockwork.option:GetColor("information");
	local categories = {};
	local itemsList = {};

	self.requiredItems:AddItem(requiredCollapse);
	self.outputItems:AddItem(outputCollapse);

	for k, v in pairs(Clockwork.item:GetAll()) do
		--[[ We don't want any base items! ]]--
		if (string.find(v("name"), "Base")) then continue; end;

		local itemCategory = v("category");
		itemsList[itemCategory] = itemsList[itemCategory] or {};
		itemsList[itemCategory][#itemsList[itemCategory] + 1] = v;
	end;

	for k, v in pairs(itemsList) do
		categories[#categories + 1] = {
			itemsList = v,
			category = k
		};
	end;

	table.sort(categories, function(a, b)
		return a.category < b.category;
	end);

	self.requiredList = vgui.Create("DPanelList", requiredCollapse);
		self.requiredList:EnableHorizontal(true);
		self.requiredList:SetAutoSize(true);
		self.requiredList:SetPadding(4);
		self.requiredList:SetSpacing(4);
	requiredCollapse:SetContents(self.requiredList);

	self.outputList = vgui.Create("DPanelList", outputCollapse);
		self.outputList:EnableHorizontal(true);
		self.outputList:SetAutoSize(true);
		self.outputList:SetPadding(4);
		self.outputList:SetSpacing(4);
	outputCollapse:SetContents(self.outputList);

	for k, v in pairs(categories) do
		local collapsibleCategory = Clockwork.kernel:CreateCustomCategoryPanel(v.category, self.allItems);
		self.allItems:AddItem(collapsibleCategory);

		local categoryList = vgui.Create("DPanelList", collapsibleCategory);
			categoryList:EnableHorizontal(true);
			categoryList:SetAutoSize(true);
			categoryList:SetPadding(4);
			categoryList:SetSpacing(4);
		collapsibleCategory:SetContents(categoryList);

		table.sort(v.itemsList, function(a, b)
			return a("name") < b("name");
		end);

		for k2, v2 in pairs(v.itemsList) do
			local toolTip = "";

			local SpawnIcon = Clockwork.kernel:CreateMarkupToolTip(vgui.Create("cwSpawnIcon", collapsibleCategory));
				SpawnIcon:SetSize(40, 40);
				SpawnIcon:SetModel(v2("model"), v2("skin", 0));
				SpawnIcon:SetToolTip("");
				toolTip = Clockwork.kernel:AddMarkupLine(toolTip, "[Information]", informationColor);
				toolTip = Clockwork.kernel:AddMarkupLine(toolTip, v2("name"));
				toolTip = Clockwork.kernel:AddMarkupLine(toolTip, v2("description"));
			SpawnIcon:SetMarkupToolTip(toolTip);

			--[[ The item is in the v2 variable. ]]--
			function SpawnIcon.DoClick()
				if (self.required[v2.uniqueID]) then return; end;

				Derma_StringRequest("", "How many "..Clockwork.kernel:Pluralize(v2("name")).." would you like to require?", "1", function(requireAmount)
					requireAmount = tonumber(requireAmount);

					if (!requireAmount) then
						Derma_Query("That is not a valid number!", "", "OK");

						return;
					end;

					if (requireAmount <= 0) then
						Derma_Query("The amount to require must not be less than or equal to zero!", "", "OK");

						return;
					end;

					Derma_StringRequest("", "How many "..Clockwork.kernel:Pluralize(v2("name")).." would you like to take from them?", requireAmount, function(takeAmount)
						takeAmount = tonumber(takeAmount);

						if (!takeAmount) then
							Derma_Query("That is not a valid number!", "", "OK");

							return;
						end;

						if (takeAmount > requireAmount) then
							Derma_Query("The amount to take must not be greater than the amount to require!", "", "OK");

							return;
						end;

						if (takeAmount < 0) then
							Derma_Query("The amount to take must not be less than the zero!", "", "OK");

							return;
						end;

						local newToolTip = toolTip;

						local NewIcon = Clockwork.kernel:CreateMarkupToolTip(vgui.Create("cwSpawnIcon", requiredCollapse));
							NewIcon:SetSize(40, 40);
							NewIcon:SetModel(v2("model"), v2("skin", 0));
							NewIcon:SetToolTip("");
							newToolTip = Clockwork.kernel:AddMarkupLine(toolTip, "\n[Recipe]", informationColor);
							newToolTip = Clockwork.kernel:AddMarkupLine(newToolTip, "Amount Required: "..requireAmount);
							newToolTip = Clockwork.kernel:AddMarkupLine(newToolTip, "Amount To Take: "..takeAmount);
						NewIcon:SetMarkupToolTip(newToolTip);
	
						function NewIcon.DoClick()
							NewIcon:Remove();
							NewIcon = nil;
							self.required[v2.uniqueID] = nil; self.take[v2.uniqueID] = nil;
						end;

						function NewIcon.DoRightClick()
							NewIcon.DoClick();
						end;

						self.requiredList:AddItem(NewIcon);
						self.required[v2.uniqueID] = (self.required[v2.uniqueID] or 0) + requireAmount;
						self.take[v2.uniqueID] = (self.take[v2.uniqueID] or 0) + takeAmount;
						requiredCollapse:Toggle(); requiredCollapse:Toggle();
					end);
				end);
			end;

			function SpawnIcon.DoRightClick()
				if (self.output[v2.uniqueID]) then return; end;
					
				Derma_StringRequest("", "How many "..Clockwork.kernel:Pluralize(v2("name")).." would you like to give to them?", "1", function(outputAmount)
					outputAmount = tonumber(outputAmount);

					if (!outputAmount) then
						Derma_Query("That is not a valid number!", "", "OK");

						return;
					end;

					if (outputAmount <= 0) then
						Derma_Query("The amount to output must not be less than or equal to zero!", "", "OK");

						return;
					end;

					local newToolTip = toolTip;

					local NewIcon = Clockwork.kernel:CreateMarkupToolTip(vgui.Create("cwSpawnIcon", outputCollapse));
						NewIcon:SetSize(40, 40);
						NewIcon:SetModel(v2("model"), v2("skin", 0));
						NewIcon:SetToolTip("");
						newToolTip = Clockwork.kernel:AddMarkupLine(toolTip, "\n[Recipe]", informationColor);
						newToolTip = Clockwork.kernel:AddMarkupLine(newToolTip, "Amount To Output: "..outputAmount);
					NewIcon:SetMarkupToolTip(newToolTip);

					function NewIcon.DoClick()
						NewIcon:Remove();
						NewIcon = nil;
						self.output[v2.uniqueID] = nil;
					end;

					function NewIcon.DoRightClick()
						NewIcon.DoClick();
					end;

					self.outputList:AddItem(NewIcon);
					self.output[v2.uniqueID] = (self.output[v2.uniqueID] or 0) + outputAmount;
					outputCollapse:Toggle(); outputCollapse:Toggle(); 
				end);
			end;

			categoryList:AddItem(SpawnIcon);
		end;
	end;
end;

-- Called to by the menu to get the width of the panel.
function PANEL:GetMenuWidth()
	return ScrW() * 0.7;
end;

-- Called when the layout should be performed.
function PANEL:PerformLayout(w, h)
	self:SetSize(w, ScrH() * 0.75);
	self.allItems:SetPos(4, 28);
	self.allItems:SetSize(w * .5, h - 36);

	self.requiredItems:SetPos((w * .5) + 8, 28);
	self.requiredItems:SetSize((w * .5) - 13, h * .5 - 18);

	self.outputItems:SetPos((w * .5) + 8, h * .5 + 18);
	self.outputItems:SetSize((w * .5) - 13, h * .5 - 60);

	self.textbox:SetPos((w *.5 + 8), h - 30);
	self.textbox:SetSize(250, 18);

	self.generate:SetPos(self.textbox:GetPos() + self.textbox:GetWide() + 8, h - 36);
	self.generate:SetSize(140, 30);

	self.clear:SetPos(self.generate:GetPos() + self.generate:GetWide() + 8, h - 36);
	self.clear:SetSize(self.generate:GetSize());
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

vgui.Register("cwRecipeCreator", PANEL, "EditablePanel");