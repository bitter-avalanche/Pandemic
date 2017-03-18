--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Rags";
ITEM.cost = 10;
ITEM.useSound = "pandemic/pills_use_1.wav";
ITEM.model = "models/props_mall/clothing_pants_draping02.mdl";
ITEM.weight = 0.6;
ITEM.uniqueID = "med_rags";
ITEM.useText = "Apply";
ITEM.factions = {FACTION_MPF};
ITEM.category = "Medical";
ITEM.business = true;
ITEM.description = "An assortment of rags. They don't look very clean, so you must be really desperate to cover a wound with these...";
ITEM.customFunctions = {"Give"};

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 3, 0, player:GetMaxHealth() ) );
	player:BoostAttribute(self.name, ATB_ENDURANCE, 4, 300);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

if (SERVER) then
	function ITEM:OnCustomFunction(player, name)
		if (name == "Give") then
			player:SetHealth( math.Clamp( player:Health() + 3, 0, player:GetMaxHealth() ) );
		end;
	end;
end;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:GiveItem(Clockwork.item:CreateInstance("empty_pillbottle"));
end;

ITEM:Register();