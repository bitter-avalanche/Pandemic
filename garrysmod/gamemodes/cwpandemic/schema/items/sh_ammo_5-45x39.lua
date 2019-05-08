--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("ammo_base");
	ITEM.name = "5.45X39 MM Bullets";
	ITEM.cost = 30;
--	ITEM.classes = {CLASS_EMP, CLASS_EOW};
	ITEM.model = "models/items/boxmrounds.mdl";
	ITEM.weight = 2;
	ITEM.access = "V";
	ITEM.uniqueID = "cw_ammo_545x39";
	ITEM.business = true;
	ITEM.ammoClass = "5.45x39MM";
	ITEM.ammoAmount = 30;
	ITEM.description = "A heavy container filled with a lot of bullets.";
ITEM:Register();