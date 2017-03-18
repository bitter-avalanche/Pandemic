--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "L85";
        ITEM.cost = 925;
        ITEM.model = "models/weapons/w_l85a2.mdl";
        ITEM.weight = 6.5;
		ITEM.access = "d";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_l85";
        ITEM.description = "A British made assault rifle, it has the Bullpup design, looks like it comes with a ACOG sight.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();