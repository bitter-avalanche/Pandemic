--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "TAR-21";
        ITEM.cost = 1000;
        ITEM.model = "models/weapons/w_imi_tar21.mdl";
        ITEM.weight = 7;
		ITEM.access = "d";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_tar21";
        ITEM.description = "An Israeli made assault rifle, it uses the Bullpup design, it has tactical iron sights.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();