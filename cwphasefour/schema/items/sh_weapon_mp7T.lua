--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Mp7 Tact.";
	ITEM.cost = 750;
	ITEM.model = "models/weapons/w_mp7_silenced.mdl";
	ITEM.weight = 3;
	ITEM.business = true;
	ITEM.access = "f";
	ITEM.uniqueID = "m9k_mp7";
	ITEM.description = "A tactical suppressed sub-machine gun. It has a red dot sight on it.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
	ITEM:AddRecipe("junk_screws", 4, "part_smgsight", 1, "part_smgcasing", 1, "part_smgslide", 1, "part_smgstock", 1, "junk_screwdriver", 1);
ITEM:Register();