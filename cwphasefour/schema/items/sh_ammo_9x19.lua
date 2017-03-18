--[[
	© 2012 CloudSixteen.com share, re-distribute and modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("ammo_base");
	ITEM.name = "9x19mm Bullets";
	ITEM.cost = 40;
	ITEM.model = "models/items/boxsrounds.mdl";
	ITEM.weight = 1;
	ITEM.batch = 5;
	ITEM.access = "";
	ITEM.uniqueID = "m9k_ammo_pistol";
	ITEM.business = true;
	ITEM.ammoClass = "pistol";
	ITEM.ammoAmount = 20;
	ITEM.description = "A container filled with bullets and 9x19mm printed on the side.";
ITEM:Register();