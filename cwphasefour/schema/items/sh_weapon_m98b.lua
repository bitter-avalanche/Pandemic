--[[
        © 2013 CloudSixteen.com do not share, re-distribute or modify
        without permission of its author (kurozael@gmail.com).
--]]
 
local ITEM = Clockwork.item:New("weapon_base");
        ITEM.name = "M98B";
        ITEM.cost = 2300;
        ITEM.model = "models/weapons/w_barrett_m98b.mdl";
        ITEM.weight = 25;
		ITEM.access = "F";
        ITEM.business = true;
        ITEM.uniqueID = "m9k_m98b";
        ITEM.description = "A bolt action rifle with bi-pod and a ballistic scope. It fires .50 BMG rounds.";
        ITEM.isAttachment = true;
        ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
        ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
        ITEM.attachmentOffsetAngles = Angle(0, 0, -180);
        ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();