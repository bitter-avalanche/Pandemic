--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "Barrett M82";
        ITEM.cost = 2000;
        ITEM.model = "models/weapons/w_barret_m82.mdl";
        ITEM.weight = 15;
		ITEM.access = "F";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_barret_m82";
        ITEM.description = "U.S. made sniper rifle, uses the .50 caliber round, it has a x12 ballistic scope, and a bi-pod";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();