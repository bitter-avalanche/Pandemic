--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Spray Can";
ITEM.cost = 15;
ITEM.model = "models/props_junk/spraycan.mdl";
ITEM.weight = 1;
ITEM.access = "v";
ITEM.category = "Reusables";
ITEM.business = true;
ITEM.description = "A standard aerosol can filled with paint.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();