--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "HK USP";
	ITEM.cost = 100;
	ITEM.model = "models/weapons/w_pist_fokkususp.mdl";
	ITEM.weight = 1;
	ITEM.access = "V";
	ITEM.uniqueID = "m9k_usp";
	ITEM.business = true;
	ITEM.description = "The HK USP is used by a large portion of law enforcement all over the country, and makes it the most universally used sidearm currently to exist.";
	ITEM.isAttachment = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 90);
	ITEM.attachmentOffsetVector = Vector(0, 4, -8);
	ITEM:AddRecipe("part_uspcasing", 1, "part_uspsight", 1, "part_uspslide", 1, "part_uspsight", 1, "junk_screwdriver", 1, "junk_screws", 4);
ITEM:Register();