--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");
ITEM.name = "Whiskey";
ITEM.cost = 13;
ITEM.model = "models/clutter/whiskeybottle.mdl";
ITEM.weight = 1.2;
ITEM.access = "w";
ITEM.business = true;
ITEM.attributes = {Stamina = 2};
ITEM.description = "A brown colored whiskey bottle, be careful!";

ITEM:Register();