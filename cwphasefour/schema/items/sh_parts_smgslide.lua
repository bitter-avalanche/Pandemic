--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "SMG Slide";
ITEM.cost = 6;
ITEM.model = "models/gibs/metal_gib2.mdl";
ITEM.plural = "SMG Slides";
ITEM.uniqueID = "part_smgslide";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.business = true;
ITEM.category = "Gun parts";
ITEM.description = "A usable SMG slide. It can be used in gun crafting.";
ITEM.spawnType = "gunparts";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();