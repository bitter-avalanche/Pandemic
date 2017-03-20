--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "Remington 7615P";
        ITEM.cost = 2000;
        ITEM.model = "models/weapons/w_remington_7615p.mdl";
        ITEM.weight = 4;
		ITEM.access = "F";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_remington7615p";
        ITEM.description = "A U.S. made sniper rifle. This model is used for sport. It has a convenient pump-action loading mechanism, instead of a bolt-action.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
		ITEM:AddRecipe("junk_screws", 4, "part_shotgunsight", 1, "part_shotguncasing", 1, "part_shotgunslide", 1, "part_shotgunstock", 1, "junk_screwdriver", 1);
ITEM:Register();