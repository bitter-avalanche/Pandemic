local PLUGIN = PLUGIN;

-- Called when the menu's items should be adjusted.
function PLUGIN:MenuItemsAdd(menuItems)
	if (Clockwork.config:Get("crafting_enabled"):Get()) then
		menuItems:Add("Crafting", "cwRecipes", "Access the crafting menu.");
		
		if (Clockwork.Client:IsSuperAdmin()) then
			menuItems:Add("Recipe Creator", "cwRecipeCreator", "Create recipes with an interface.");
		end;
	end;
end;

-- Called to check whether or not the player can see the recipe in the menu.
function Clockwork:PlayerCanSeeRecipe(recipeTable)
	local factions = recipeTable.factions;

	if (factions) then
		if !(table.HasValue(factions, string.lower(Clockwork.Client:GetFaction()))) then
			return false;
		end;
	end;

	return true;
end;

-- Called just before the requirements are added to the tooltip.
function Clockwork:PreRecipeRequired(recipeTable, toolTip) end;

-- Called just after the requirements are added to the tooltip.
function Clockwork:PostRecipeRequired(recipeTable, toolTip) end;

-- Called just before the outputs are added to the tooltip.
function Clockwork:PreRecipeOutputs(recipeTable, toolTip) end;

-- Called just after the outputs are added to the tooltip.
function Clockwork:PostRecipeOutputs(recipeTable, toolTip) end;

-- Called just after a recipe is clicked.
function Clockwork:RecipeClicked(recipeTable) end;