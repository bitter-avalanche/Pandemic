--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("Government Official");
	CLASS.color = Color(54, 139, 193, 255);
	CLASS.factions = {FACTION_GOVT};
	CLASS.isDefault = true;
	CLASS.wagesName = "Supplies";
	CLASS.description = "A survivor of the pandemic. For now.";
	CLASS.defaultPhysDesc = "Wearing dirty clothes.";
CLASS_CITIZEN = CLASS:Register();