--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "MP5 Silenced";
	ITEM.cost = 200;
	ITEM.model = "models/weapons/w_hk_mp5sd.mdl";
	ITEM.weight = 2.5;
	ITEM.access = "V";
	ITEM.uniqueID = "m9k_mp5sd";
	ITEM.business = true;
	ITEM.description = "A higher grade version of the standard MP5. This variant, with a permanent silencer built into the gun, is rarer to come across in Civilian circles and is often considered towards the Military spectrum grade gear.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();