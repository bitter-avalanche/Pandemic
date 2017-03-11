--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("FEMA Employee");
	CLASS.color = Color(128, 0, 128, 255);
	CLASS.factions = {FACTION_CIVILIAN};
	CLASS.isDefault = false;
	CLASS.wagesName = "Supplies";
	CLASS.description = "An old employee of the Federal Emergency Management Agency. Might have answers?";
	CLASS.defaultPhysDesc = "Wearing dirty clothes.";
CLASS_CITIZEN = CLASS:Register();