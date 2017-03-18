--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("ammo_base");
	ITEM.cost = 60;
	ITEM.name = "Assault Rifle Rounds";
	ITEM.batch = 5;
	ITEM.model = "models/items/boxzrounds.mdl";
	ITEM.weight = 1.5;
	ITEM.access = "";
	ITEM.business = true;
	ITEM.uniqueID = "ar2";
	ITEM.ammoClass = "ar2";
	ITEM.ammoAmount = 30;
	ITEM.description = "An average sized blue container filled with assault rifle rounds.";
Clockwork.item:Register(ITEM);