--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Glock 18";
	ITEM.cost = 300;
	ITEM.classes = {CLASS_EMP, CLASS_EOW};
	ITEM.model = "models/weapons/w_dmg_glock.mdl";
	ITEM.weight = 1;
	ITEM.access = "f";
	ITEM.business = true;
	ITEM.uniqueID = "m9k_glock";
	ITEM.description = "A black, full-auto hand gun, it has a extended magazine.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 180);
	ITEM.attachmentOffsetVector = Vector(0, 0, -8);
ITEM:Register();