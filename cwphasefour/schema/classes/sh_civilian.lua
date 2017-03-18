--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("Survivor");
	CLASS.color = Color(150, 125, 100, 255);
	CLASS.factions = {FACTION_CIVILIAN};
	CLASS.isDefault = true;
	CLASS.wagesName = "Supplies";
	CLASS.description = "A survivor of the Pandemic, for now.";
	CLASS.defaultPhysDesc = "Wearing dirty clothes.";
CLASS_CITIZEN = CLASS:Register();