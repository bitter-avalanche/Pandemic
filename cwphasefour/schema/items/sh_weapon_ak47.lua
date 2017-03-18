--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "AK-47";
	ITEM.cost = 400;
	ITEM.model = "models/weapons/w_ak47_m9k.mdl";
	ITEM.weight = 4;
	ITEM.classes = {CLASS_EOW};
	ITEM.uniqueID = "m9k_ak47";
	ITEM.business = true;
	ITEM.description = "A gun praised by gun enthusiasts across the United States for its often lethal first shot. The weapon is prone to jamming and requires above-average maintenance when in comparison to the United States' own M4 or M16 series.";
	ITEM.isAttachment = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-3.96, 4.95, -2.97);
ITEM:Register();