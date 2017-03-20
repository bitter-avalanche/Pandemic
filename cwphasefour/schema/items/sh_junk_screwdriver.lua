--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Screwdriver";
ITEM.cost = 6;
ITEM.model = "models/props_junk/junk_screwdriver.mdl";
ITEM.plural = "Screwdrivers";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.uniqueID = "junk_screwdriver";
ITEM.business = true;
ITEM.category = "Junk";
ITEM.description = "An ordinary, everyday screwdriver.";
ITEM.spawnType = "junk";
ITEM.spawnValue = 35;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();