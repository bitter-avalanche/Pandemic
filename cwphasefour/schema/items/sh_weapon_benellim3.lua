--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Benelli M3";
	ITEM.cost = 200;
	ITEM.model = "models/weapons/w_benelli_m3.mdl";
	ITEM.weight = 2.5;
	ITEM.access = "V";
	ITEM.uniqueID = "m9k_m3";
	ITEM.business = true;
	ITEM.description = "The Benelli M3 pump-action Shotgun was majorly popular to gun enthusiasts and at-home protection for its effectivity in tight spaces.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();