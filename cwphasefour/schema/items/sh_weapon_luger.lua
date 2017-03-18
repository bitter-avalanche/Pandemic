--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "P08 Luger";
	ITEM.cost = 175;
	ITEM.classes = {CLASS_EMP, CLASS_EOW};
	ITEM.model = "models/weapons/w_luger_p08.mdl";
	ITEM.weight = 1;
	ITEM.access = "f";
	ITEM.business = true;
	ITEM.uniqueID = "m9k_luger";
	ITEM.description = "A WWII German handgun. It still has the Officer's name engraved on it, and holds eight shots.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(0, 0, -8);
ITEM:Register();