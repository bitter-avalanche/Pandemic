--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "Winchester 1897";
        ITEM.cost = 1150;
        ITEM.model = "models/weapons/w_winchester_1897_trench.mdl";
        ITEM.weight = 5;
		ITEM.access = "d";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_1897winchester";
        ITEM.description = "A sequel to the Winchester 1887 with a stock.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
		ITEM.loweredOrigin = Vector(3, 0, -4);
		ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
        ITEM.attachmentOffsetVector = Vector(-4, 4, 4);
		ITEM:AddRecipe("junk_screws", 4, "part_shotgunsight", 1, "part_shotguncasing", 1, "part_shotgunslide", 1, "part_shotgunstock", 1, "junk_screwdriver", 1);
ITEM:Register();