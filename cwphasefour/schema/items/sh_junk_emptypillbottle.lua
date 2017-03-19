--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Empty pill bottle";
ITEM.cost = 6;
ITEM.model = "models/bloocobalt/l4d/items/w_eq_pills.mdl";
ITEM.plural = "Empty pill bottles";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.uniqueID = "empty_pillbottle";
ITEM.business = true;
ITEM.category = "Junk";
ITEM.description = "This used to contain pills at some time...";
ITEM.spawnType = "junk";
ITEM.spawnValue = 35;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

function ITEM:OnEntitySpawned(entity) entity:SetBodygroup(1, 1); end;


ITEM:Register();