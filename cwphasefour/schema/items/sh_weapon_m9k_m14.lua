--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "M14";
	ITEM.cost = 1200;
	ITEM.model = "models/weapons/w_snip_m14sp.mdl";
	ITEM.weight = 4;
	ITEM.access = "F";
	ITEM.business = true;
	ITEM.uniqueID = "m9k_m14sp";
	ITEM.description = "A grey long rifle with rails on the top.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 90);
	ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
	ITEM:AddRecipe("junk_screws", 6, "part_arsight", 1, "part_arcasing", 1, "part_arslide", 1, "part_arstock", 1, "junk_screwdriver", 1);
ITEM:Register();