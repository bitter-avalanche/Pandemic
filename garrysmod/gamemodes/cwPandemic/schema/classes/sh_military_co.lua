--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("Military - CO");
	CLASS.color = Color(165, 21, 21, 255);
	CLASS.factions = {FACTION_MILITARY};
	CLASS.wages = 30;
	CLASS.wagesName = "Supplies";
	CLASS.description = "A soldier of the United States Marine Corps.";
	CLASS.defaultPhysDesc = "Wearing a Military uniform.";
CLASS_MILITARYCO = CLASS:Register();