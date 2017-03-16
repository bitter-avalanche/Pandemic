--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "HK 45C";
	ITEM.cost = 100;
	ITEM.model = "models/weapons/w_hk45c.mdl";
	ITEM.weight = 1;
	ITEM.access = "V";
	ITEM.uniqueID = "m9k_hk45";
	ITEM.business = true;
	ITEM.description = "The Compact version of the HK USP, using .45 ACP ammo, is preferred amongst amateurs for its relative good compensation of firepower to recoil, and the ammo is more common than its counterpart.";
	ITEM.isAttachment = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 90);
	ITEM.attachmentOffsetVector = Vector(0, 4, -8);
ITEM:Register();