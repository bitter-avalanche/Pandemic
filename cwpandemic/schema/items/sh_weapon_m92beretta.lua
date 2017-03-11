--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "M92 Beretta";
	ITEM.cost = 100;
	ITEM.model = "models/weapons/w_beretta_m92.mdl";
	ITEM.weight = 1;
	ITEM.access = "V";
	ITEM.uniqueID = "m9k_m92beretta";
	ITEM.business = true;
	ITEM.description = "The M92 Beretta is a relatively rare gun to find, considering its exclusive use by specialised law enforcement and the military. This gun is very limited in civilian supply.";
	ITEM.isAttachment = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 90);
	ITEM.attachmentOffsetVector = Vector(0, 4, -8);
ITEM:Register();