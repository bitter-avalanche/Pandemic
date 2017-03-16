--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "MP5";
	ITEM.cost = 200;
	ITEM.model = "models/weapons/w_hk_mp5.mdl";
	ITEM.weight = 2.5;
	ITEM.access = "V";
	ITEM.classes = {CLASS_EMP, CLASS_EOW};
	ITEM.uniqueID = "m9k_mp5";
	ITEM.business = true;
	ITEM.description = "A compact multi-purpose weapon that is used as a starter for most beginners in submachine guns, allowing for versatility in training purposes and actual combat purposes.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();