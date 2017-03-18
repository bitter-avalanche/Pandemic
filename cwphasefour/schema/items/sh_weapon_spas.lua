--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "Spas 12";
        ITEM.cost = 1200;
        ITEM.model = "models/weapons/w_spas_12.mdl";
        ITEM.weight = 6;
		ITEM.access = "d";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_spas12";
        ITEM.description = "A tactical semi-auto shotgun, it has tactical sights, and a stock.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
		ITEM.loweredOrigin = Vector(3, 0, -4);
		ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
        ITEM.attachmentOffsetVector = Vector(-4, 4, 4);
ITEM:Register();