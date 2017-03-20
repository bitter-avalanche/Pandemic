--[[
	© CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("custom_weapon");
	ITEM.name = "Sledgehammer";
	ITEM.cost = 400;
	ITEM.model = "models/weapons/w_sledgehammer.mdl";
	ITEM.weight = 2;
	ITEM.business = true;
	ITEM.category = "Weapons";
	ITEM.weaponClass = "cw_sledgehammer";
	ITEM.description = "A long and brutal sledgehammer with a bloody tip.";
	ITEM.isMeleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.loweredOrigin = Vector(-12, 2, 0);
	ITEM.loweredAngles = Angle(-25, 15, -80);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 255, 0);
	ITEM.attachmentOffsetVector = Vector(5, 5, -8);
	ITEM.spawnValue = 7;
	ITEM.isRareSpawn = true;
	ITEM:AddRecipe("junk_screws", 6, "part_shotgunsight", 1, "part_shotguncasing", 3, "part_shotgunslide", 1, "part_shotgunstock", 1, "junk_screwdriver", 1);
ITEM:Register();