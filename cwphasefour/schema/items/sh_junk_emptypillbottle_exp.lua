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
ITEM.skin = 1;
ITEM.uniqueID = "empty_pillbottle2";
ITEM.business = true;
ITEM.category = "Junk";
ITEM.description = "This used to contain pills at some time... Upon checking the expiration date, you feel sorry for the person who ingested them...";
ITEM.spawnType = "junk";
ITEM.spawnValue = 45;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

function ITEM:OnEntitySpawned(entity) entity:SetBodygroup(1, 1); end;

ITEM:Register();