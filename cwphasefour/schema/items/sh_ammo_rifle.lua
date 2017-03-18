--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("ammo_base");
	ITEM.name = "Rifle Ammo";
	ITEM.cost = 30;
	ITEM.classes = {CLASS_EOW};
	ITEM.model = "models/items/boxzrounds.mdl";
	ITEM.plural = "Rifle bullets";
	ITEM.weight = 1;
	ITEM.uniqueID = "m9k_ammo_ar2";
	ITEM.business = true;
	ITEM.ammoClass = "ar2";
	ITEM.ammoAmount = 30;
	ITEM.description = "A blue box full of ammo that can be used for a variety of assault rifles.";
ITEM:Register();