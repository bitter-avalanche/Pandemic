--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("CDC Employee");
	CLASS.color = Color(0, 128, 0, 255);
	CLASS.factions = {FACTION_CIVILIAN};
	CLASS.isDefault = false;
	CLASS.wagesName = "Supplies";
	CLASS.description = "An old employee of the Center for Disease Control. Might have answers?";
	CLASS.defaultPhysDesc = "Wearing dirty clothes.";
CLASS_CITIZEN = CLASS:Register();