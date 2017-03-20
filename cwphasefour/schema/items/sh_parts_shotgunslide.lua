--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Shotgun Slide";
ITEM.cost = 6;
ITEM.model = "models/gibs/metal_gib2.mdl";
ITEM.plural = "Shotgun Slides";
ITEM.uniqueID = "part_shotgunslide";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.business = true;
ITEM.category = "Gun parts";
ITEM.description = "A usable shotgun slide. It can be used in gun crafting.";
ITEM.spawnType = "gunparts";
ITEM.spawnValue = 22;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();