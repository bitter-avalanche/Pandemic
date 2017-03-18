--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "S&W Model 3 Russian";
	ITEM.cost = 500;
	ITEM.model = "models/weapons/w_model_3_rus.mdl";
	ITEM.weight = 2;
	ITEM.access = "f";
	ITEM.classes = {CLASS_EOW};
	ITEM.uniqueID = "m9k_model3russian";
	ITEM.business = true;
	ITEM.description = "An S&W revolver produced between 1870-1915. It has a red plated grip.";
	ITEM.isAttachment = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-4.19, 0, -8.54);
ITEM:Register();