--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Colt Python";
	ITEM.cost = 300;
	ITEM.model = "models/weapons/w_colt_python.mdl";
	ITEM.weight = 2;
	ITEM.access = "V";
	ITEM.uniqueID = "m9k_coltpython";
	ITEM.business = true;
	ITEM.description = "A considerably large sidearm preferred by gun enthusiasts for the incredible fire power that this gun holds.";
	ITEM.isAttachment = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(-180, 180, 90);
	ITEM.attachmentOffsetVector = Vector(-4.19, 0, -8.54);
ITEM:Register();