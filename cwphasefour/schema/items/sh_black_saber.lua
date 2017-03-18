--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "Black Saber";
        ITEM.cost = 3000;
        ITEM.model = "models/weapons/w_snip_int.mdl";
        ITEM.weight = 28;
		ITEM.access = "F";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_intervention";
        ITEM.description = "A huge, black, high caliber rifle with an adjustable stock, and a bi-pod attached to the end. It's extremely fuckin' heavy.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 90);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();