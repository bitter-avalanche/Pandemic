--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "UMP45";
	ITEM.cost = 925;
	ITEM.model = "models/weapons/w_hk_ump45.mdl";
	ITEM.weight = 4;
	ITEM.business = true;
	ITEM.access = "f";
	ITEM.uniqueID = "m9k_ump45";
	ITEM.description = "A sub-machine gun with an adjustable stock, and tactical iron sights.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();