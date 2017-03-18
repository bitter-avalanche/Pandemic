--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "F2000";
        ITEM.cost = 1000;
        ITEM.model = "models/weapons/w_fn_f2000.mdl";
        ITEM.weight = 7;
		ITEM.access = "d";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_f2000";
        ITEM.description = "A futuristic rifle, with a Bullpup design, it has a large scope.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();