--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Pistol Iron Sight";
ITEM.cost = 6;
ITEM.model = "models/gibs/metal_gib2.mdl";
ITEM.plural = "Pistol Iron Sights";
ITEM.weight = 0.5;
ITEM.uniqueID = "part_pistolsight";
ITEM.access = "v";
ITEM.business = true;
ITEM.category = "Gunparts";
ITEM.description = "A usable Iron Sight for a Pistol. It can be used in gun crafting.";
ITEM.spawnType = "gunparts";
ITEM.spawnValue = 30;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();