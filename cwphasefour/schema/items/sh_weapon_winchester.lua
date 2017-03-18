--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "Winchester Carbine";
        ITEM.cost = 750;
        ITEM.model = "models/weapons/w_winchester_1873.mdl";
        ITEM.weight = 7.5;
		ITEM.access = "d";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_winchester73";
        ITEM.description = "An old western lever action rifle. It has an oak wooden finish.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();