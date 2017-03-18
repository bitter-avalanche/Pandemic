--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("ammo_base");
	ITEM.name = ".50 Rounds";
	ITEM.cost = 300;
	ITEM.model = "models/items/sniper_round_box.mdl";
	ITEM.weight = 2;
	ITEM.access = "";
	ITEM.uniqueID = "m9k_ammo_sniper_rounds";
	ITEM.business = true;
	ITEM.ammoClass = "SniperPenetratedRound";
	ITEM.ammoAmount = 10;
	ITEM.description = "A small box filled with bullets for snipers.";
ITEM:Register();
