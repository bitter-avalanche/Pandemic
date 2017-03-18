--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "M24";
        ITEM.cost = 2250;
        ITEM.model = "models/weapons/w_snip_m24_6.mdl";
        ITEM.weight = 25;
		ITEM.access = "F";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_m24";
        ITEM.description = "A metallic sniper rifle with a retracted bi-pod. It takes 7.62 NATO rounds.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 90);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();