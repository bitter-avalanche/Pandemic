--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "AK-74";
	ITEM.cost = 200;
	ITEM.model = "models/weapons/w_rif_ak47.mdl";
	ITEM.weight = 3;
--	ITEM.access = "V";
--	ITEM.classes = {CLASS_EMP, CLASS_EOW};
	ITEM.uniqueID = "cw_ak74";
	ITEM.business = true;
	ITEM.description = "A rather dated weapon as far as more modern weaponry goes. Still reliable in a pinch, and often in the possession of collectors.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();