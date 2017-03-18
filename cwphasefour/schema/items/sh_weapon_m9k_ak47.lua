--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "AK-47";
	ITEM.cost = 1100;
	ITEM.model = "models/weapons/w_ak47_m9k.mdl";
	ITEM.weight = 3;
	ITEM.access = "d";
	ITEM.classes = {CLASS_EMP, CLASS_EOW};
	ITEM.business = true;
	ITEM.uniqueID = "m9k_ak47";
	ITEM.description = "An assault rifle with a wooden barrel.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();