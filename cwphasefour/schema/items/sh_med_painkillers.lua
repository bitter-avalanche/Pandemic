--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Painkillers";
ITEM.cost = 10;
ITEM.useSound = "pandemic/pills_use_1.wav";
ITEM.model = "models/bloocobalt/l4d/items/w_eq_pills.mdl";
ITEM.weight = 0.6;
ITEM.uniqueID = "painkillers";
ITEM.useText = "Consume";
ITEM.factions = {FACTION_MPF};
ITEM.category = "Medical";
ITEM.business = true;
ITEM.description = "A small, white plastic container filled with tylenol painkillers.";
ITEM.customFunctions = {"Empty", "Give"};

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 15, 0, player:GetMaxHealth() ) );
	player:BoostAttribute(self.name, ATB_ENDURANCE, 4, 300);
	player:GiveItem(Clockwork.item:CreateInstance("empty_pillbottle"));
	Clockwork.disease:CurePlayer(ent, Migraine) 
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

-- Requires fixing
if (SERVER) then
	function ITEM:OnCustomFunction(player, name)
		if (name == "Give") then
	player:SetHealth( math.Clamp( player:Health() + 15, 0, player:GetMaxHealth() ) );
		end;
	end;
end;

if (SERVER) then
	function ITEM:OnCustomFunction(player, name)
		if (name == "Empty") then
			player:GiveItem(Clockwork.item:CreateInstance("empty_pillbottle"));
		end;
	end;
end;

ITEM:Register();