--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("ammo_base");
	ITEM.name = "SMG Bullets";
	ITEM.cost = 30;
	ITEM.classes = {CLASS_EMP, CLASS_EOW};
	ITEM.model = "models/items/boxmrounds.mdl";
	ITEM.weight = 2;
	ITEM.access = "V";
	ITEM.uniqueID = "m9k_ammo_smg";
	ITEM.business = true;
	ITEM.ammoClass = "smg1";
	ITEM.ammoAmount = 30;
	ITEM.description = "A heavy container filled with a lot of bullets.";
ITEM:Register();