--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "FAMAS";
        ITEM.cost = 1050;
        ITEM.model = "models/weapons/w_tct_famas.mdl";
        ITEM.weight = 6;
		ITEM.access = "d";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_famas";
        ITEM.description = "A French made rifle, A.K.A the Trumpet Gun, uses the Bullpup design.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 90);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();