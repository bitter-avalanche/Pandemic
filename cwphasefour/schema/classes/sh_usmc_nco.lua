--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("USMC - Non-Commissioned Officers");
	CLASS.color = Color(0, 0, 128, 255);
	CLASS.wages = 10;
	CLASS.factions = {FACTION_MILITARY};
	CLASS.isDefault = true;
	CLASS.wagesName = "Supplies";
	CLASS.description = "A more experienced and hardened soldier of the U.S. Marine Corps.";
	CLASS.defaultPhysDesc = "Wearing a jacket with a radio.";
CLASS_MNCO = CLASS:Register();