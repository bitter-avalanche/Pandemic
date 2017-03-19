--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Colt 1911";
	ITEM.cost = 350;
	ITEM.model = "models/weapons/s_dmgf_co1911.mdl";
	ITEM.weight = 1;
	ITEM.access = "f";
	ITEM.business = true;
	ITEM.uniqueID = "m9k_colt1911";
	ITEM.description = "A metal high power pistol.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 180);
	ITEM.attachmentOffsetVector = Vector(0, 0, -8);
ITEM:Register();