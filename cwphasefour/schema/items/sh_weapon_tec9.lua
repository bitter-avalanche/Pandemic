--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Tec9";
	ITEM.cost = 800;
	ITEM.model = "models/weapons/w_intratec_tec9.mdl";
	ITEM.weight = 3;
	ITEM.business = true;
	ITEM.access = "f";
	ITEM.uniqueID = "m9k_tec9";
	ITEM.description = "A small black machine pistol with an extended clip.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 90);
	ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();