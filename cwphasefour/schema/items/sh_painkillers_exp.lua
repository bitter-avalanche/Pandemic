--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Expired painkillers";
ITEM.cost = 10;
ITEM.useSound = "pandemic/pills_use_1.wav";
ITEM.model = "models/bloocobalt/l4d/items/w_eq_pills.mdl";
ITEM.skin = 1;
ITEM.weight = 0.6;
ITEM.useText = "Consume";
ITEM.factions = {FACTION_MPF};
ITEM.category = "Medical";
ITEM.business = true;
ITEM.description = "A small, white plastic container filled with tylenol painkillers.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:TakeDamage(15, player, player);
end;

-- Called after consuming, to return our junk items.
function ITEM:OnUse(player, itemEntity)
	player:GiveItem(Clockwork.item:CreateInstance("junk_emptypillbottle_exp"));
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
