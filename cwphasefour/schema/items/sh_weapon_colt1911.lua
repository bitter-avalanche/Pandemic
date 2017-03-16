--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Colt M1911";
	ITEM.cost = 100;
	ITEM.model = "models/weapons/s_dmgf_co1911.mdl";
	ITEM.weight = 1;
	ITEM.access = "V";
	ITEM.uniqueID = "m9k_colt1911";
	ITEM.business = true;
	ITEM.description = "The Colt M1911 pistol has been a widely recognised service weapon for the United States, along its counterpart, the HK USP.";
	ITEM.isAttachment = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 90);
	ITEM.attachmentOffsetVector = Vector(0, 4, -8);
ITEM:Register();