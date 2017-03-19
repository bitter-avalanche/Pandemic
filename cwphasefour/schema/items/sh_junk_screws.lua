--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Screwdriver";
ITEM.cost = 6;
ITEM.model = "models/props_lab/box01a.mdl";
ITEM.plural = "Screwdrivers";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.uniqueID = "junk_screws";
ITEM.business = true;
ITEM.category = "Junk";
ITEM.description = "A collection of some screws. Nothing special, right?";
ITEM.spawnType = "junk";
ITEM.spawnValue = 25;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();