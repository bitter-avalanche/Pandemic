--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("USMC - Officers");
	CLASS.color = Color(128, 0, 0, 255);
	CLASS.wages = 5;
	CLASS.factions = {FACTION_MILITARY};
	CLASS.wagesName = "Supplies";
	CLASS.description = "Greatly skilled tacticians and soldiers in charge of their men.";
	CLASS.defaultPhysDesc = "Wearing a jacket with a radio.";
CLASS_MOFC = CLASS:Register();