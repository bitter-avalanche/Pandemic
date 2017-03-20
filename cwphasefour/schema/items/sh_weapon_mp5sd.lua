--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Mp5SD";
	ITEM.cost = 700;
	ITEM.model = "models/weapons/w_hk_mp5sd.mdl";
	ITEM.weight = 4;
	ITEM.business = true;
	ITEM.access = "f";
	ITEM.uniqueID = "m9k_mp5sd";
	ITEM.description = "A Navy SEAL sub-machine gun with a silencer attached.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
	ITEM:AddRecipe("junk_screws", 4, "part_smgsight", 1, "part_smgcasing", 1, "part_smgslide", 1, "part_smgstock", 1, "junk_screwdriver", 1);
ITEM:Register();