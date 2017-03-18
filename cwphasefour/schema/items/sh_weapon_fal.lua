--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "FN FAL";
        ITEM.cost = 1100;
        ITEM.model = "models/weapons/w_fn_fal.mdl";
        ITEM.weight = 9;
		ITEM.access = "d";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_fal";
        ITEM.description = "A Belgian rifle, was nicknamed 'The right arm of the Free World' during the Cold War.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();