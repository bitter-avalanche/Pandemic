﻿--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "Dragunov SVU";
        ITEM.cost = 1950;
        ITEM.model = "models/weapons/w_dragunov_svu.mdl";
        ITEM.weight = 11.5;
		ITEM.access = "F";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_svu";
        ITEM.description = "A tactical silenced Dragunov sniper rifle..";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, -180);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
		ITEM:AddRecipe("junk_screws", 8, "part_snipersight", 1, "part_snipercasing", 1, "part_sniperslide", 1, "part_sniperstock", 1, "junk_screwdriver", 1);
ITEM:Register();