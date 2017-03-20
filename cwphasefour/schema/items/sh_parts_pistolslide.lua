--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Pistol Slide";
ITEM.cost = 6;
ITEM.model = "models/gibs/metal_gib2.mdl";
ITEM.plural = "Pistol Slides";
ITEM.uniqueID = "part_pistolslide";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.business = true;
ITEM.category = "Gun parts";
ITEM.description = "A usable pistol slide. It can be used in gun crafting.";
ITEM.spawnType = "gunparts";
ITEM.spawnValue = 29;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();