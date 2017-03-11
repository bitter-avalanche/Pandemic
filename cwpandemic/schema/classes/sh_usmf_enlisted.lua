--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("USMF - Enlisted");
	CLASS.color = Color(128, 128, 0, 255);
	CLASS.wages = 5;
	CLASS.factions = {FACTION_MILITARY};
	CLASS.wagesName = "Supplies";
	CLASS.description = "A grunt of the USMF.";
	CLASS.defaultPhysDesc = "Wearing a metrocop jacket with a radio";
CLASS_MENL = CLASS:Register();