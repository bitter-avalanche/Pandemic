--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Assault Rifle Stock";
ITEM.cost = 6;
ITEM.model = "models/gibs/metal_gib2.mdl";
ITEM.plural = "Assault Rifle Stocks";
ITEM.weight = 0.5;
ITEM.uniqueID = "part_arstock";
ITEM.access = "v";
ITEM.business = true;
ITEM.category = "Gunparts";
ITEM.description = "A standard but tattered stock used in the manufacturing of assault rifles.";
ITEM.spawnType = "gunparts";
ITEM.spawnValue = 24;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();