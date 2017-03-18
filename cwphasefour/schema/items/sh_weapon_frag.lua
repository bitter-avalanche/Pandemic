--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("grenade_base");
	ITEM.name = "M61 Frag Grenade";
	ITEM.cost = 50;
	ITEM.model = "models/weapons/w_eq_fraggrenade_dropped.mdl";
	ITEM.weight = 0.8;
	ITEM.access = "V";
	ITEM.classes = {CLASS_EOW};
	ITEM.uniqueID = "m9k_m61_frag";
	ITEM.business = true;
	ITEM.description = "A slightly dusty black grenade. A pin is secured in it, requiring you to pull it out before it blows up.";
	ITEM.isAttachment = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(90, 0, 0);
	ITEM.attachmentOffsetVector = Vector(0, 6.55, 8.72);
ITEM:Register();