--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Desert Eagle";
	ITEM.cost = 100;
	ITEM.model = "models/weapons/w_tcom_deagle.mdl";
	ITEM.weight = 1;
	ITEM.access = "V";
	ITEM.uniqueID = "m9k_deagle";
	ITEM.business = true;
	ITEM.description = "The Desert Eagle is the most powerful gun to currently exist, with an improvement over the Colt Python on bulletcount and firing rate.";
	ITEM.isAttachment = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 90);
	ITEM.attachmentOffsetVector = Vector(0, 4, -8);
ITEM:Register();