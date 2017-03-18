--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "AMD-65";
        ITEM.cost = 900;
        ITEM.model = "models/weapons/w_amd_65.mdl";
        ITEM.weight = 7.5;
		ITEM.access = "d";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_amd65";
        ITEM.description = "A Russian made assault rifle. It has a collapsible stock, mainly used by Paratroopers and Tank crew units.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();