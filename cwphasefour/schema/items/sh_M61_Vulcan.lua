--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "M61 Vulcan";
        ITEM.cost = 5000;
        ITEM.model = "models/weapons/w_m134_minigun.mdl";
        ITEM.weight = 36;
		ITEM.access = "F";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_minigun";
        ITEM.description = "a hydraulically or pneumatically driven, six-barrelled, air-cooled, electrically fired Gatling-style rotary cannon which fires 20 mm rounds at an extremely high rate";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 180);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();