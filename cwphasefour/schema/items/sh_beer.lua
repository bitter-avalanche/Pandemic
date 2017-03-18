--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");
	ITEM.name = "Beer";
	ITEM.cost = 6;
	ITEM.model = "models/foodnhouseholditems/beer_master.mdl";
	ITEM.weight = 0.6;
	ITEM.access = "w";
	ITEM.business = true;
	ITEM.attributes = {Strength = 2};
	ITEM.description = "A glass bottle filled with liquid. It has a rather funny smell.";
ITEM:Register();