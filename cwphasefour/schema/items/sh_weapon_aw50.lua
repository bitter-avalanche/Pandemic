--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "AI-AW50";
        ITEM.cost = 2500;
        ITEM.model = "models/weapons/w_acc_int_aw50.mdl";
        ITEM.weight = 30;
		ITEM.access = "F";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_aw50";
        ITEM.description = "A large sniper rifle that fires a .50 BMG";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, -180);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();