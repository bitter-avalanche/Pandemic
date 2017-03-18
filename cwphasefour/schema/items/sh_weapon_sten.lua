--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "STEN";
	ITEM.cost = 900;
	ITEM.classes = {CLASS_EMP, CLASS_EOW};
	ITEM.model = "models/weapons/w_sten.mdl";
	ITEM.weight = 3;
	ITEM.business = true;
	ITEM.access = "f";
	ITEM.uniqueID = "m9k_sten";
	ITEM.description = "A WWII British made sub-machine gun, it has a skeleton stock, and a horizontal magazine.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(90, 180, 180);
	ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();