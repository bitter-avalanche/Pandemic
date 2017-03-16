--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Empty pill bottle";
ITEM.cost = 6;
ITEM.model = "models/props_lab/box01a.mdl";
ITEM.plural = "Empty pill bottles";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.uniqueID = "empty_pillbottle";
ITEM.business = true;
ITEM.category = "Junk";
ITEM.description = "This used to contain pills at some time...";
ITEM.spawnType = "junk";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();