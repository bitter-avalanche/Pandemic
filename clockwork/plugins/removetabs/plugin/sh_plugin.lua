local PLUGIN = PLUGIN;
local Clockwork = Clockwork;

-- Called when the menu's items should be destroyed.
function PLUGIN:MenuItemsDestroy(items)
	if (CLIENT) then
	    items:Destroy("Plugin Center"); -- Cuz I want to.
	    items:Destroy("Community"); -- C16 is love, C16 is life... NOT
	    items:Destroy("Directory");
    end;
end;