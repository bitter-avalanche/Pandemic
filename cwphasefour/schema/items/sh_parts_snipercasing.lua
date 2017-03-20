--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Sniper Casing";
ITEM.cost = 6;
ITEM.model = "models/gibs/metal_gib2.mdl";
ITEM.plural = "Sniper Casings";
ITEM.weight = 0.5;
ITEM.uniqueID = "part_snipercasing";
ITEM.access = "v";
ITEM.business = true;
ITEM.category = "Gunparts";
ITEM.description = "A tattered casing designed to manufacture snipers. It's not the best, but it'll do.";
ITEM.spawnType = "gunparts";
ITEM.spawnValue = 19;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();