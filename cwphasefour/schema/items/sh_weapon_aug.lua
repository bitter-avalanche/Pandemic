--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "Aug A3";
        ITEM.cost = 975;
        ITEM.model = "models/weapons/w_auga3.mdl";
        ITEM.weight = 8;
		ITEM.access = "d";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_auga3";
        ITEM.description = "An Austrian made assault rifle, is has the Bullpup design, it has a foregrip, red dot sight, and a tac light.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();