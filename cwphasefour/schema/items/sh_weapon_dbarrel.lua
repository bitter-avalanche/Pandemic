--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "Double Barrel Shotgun";
        ITEM.cost = 1000;
        ITEM.model = "models/weapons/w_double_barrel_shotgun.mdl";
        ITEM.weight = 5;
		ITEM.access = "d";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_dbarrel";
        ITEM.description = "An old western-style double-barrel shotgun. It has a wood finish and holds two shells.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
		ITEM.loweredOrigin = Vector(3, 0, -4);
		ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
        ITEM.attachmentOffsetVector = Vector(-4, 4, 4);
		ITEM:AddRecipe("junk_screws", 8, "part_shotgunsight", 1, "part_shotguncasing", 1, "part_shotgunstock", 1, "junk_screwdriver", 1);
ITEM:Register();