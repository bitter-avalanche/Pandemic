--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Sniper Slide";
ITEM.cost = 6;
ITEM.model = "models/gibs/metal_gib2.mdl";
ITEM.plural = "Sniper Slides";
ITEM.uniqueID = "part_sniperslide";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.business = true;
ITEM.category = "Gun parts";
ITEM.description = "A usable sniper slide. It can be used in gun crafting.";
ITEM.spawnType = "gunparts";
ITEM.spawnValue = 10;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();