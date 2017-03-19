--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "PP-19";
	ITEM.cost = 975;
	ITEM.model = "models/weapons/w_pp19_bizon.mdl";
	ITEM.weight = 4.5;
	ITEM.business = true;
	ITEM.access = "f";
	ITEM.uniqueID = "m9k_bizonp19";
	ITEM.description = "A Russian made black sub-machine gun. It has a tactical light attached.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();