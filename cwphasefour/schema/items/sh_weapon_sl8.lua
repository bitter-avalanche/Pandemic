--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "HK SL8";
        ITEM.cost = 1500;
        ITEM.model = "models/weapons/w_hk_sl8.mdl";
        ITEM.weight = 6;
		ITEM.access = "F";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_sl8";
        ITEM.description = "A German made sniper rifle, has a adjustable cheek rest, and a x8 ballistic scope.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();