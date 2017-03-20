--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "A.R. Iron Sight";
ITEM.cost = 6;
ITEM.model = "models/gibs/metal_gib2.mdl";
ITEM.plural = "A.R. Iron Sights";
ITEM.weight = 0.5;
ITEM.uniqueID = "part_arsight";
ITEM.access = "v";
ITEM.business = true;
ITEM.category = "Gunparts";
ITEM.description = "A usable Iron Sight for an assault rifle. It can be used in gun crafting.";
ITEM.spawnType = "gunparts";
ITEM.spawnValue = 20;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();