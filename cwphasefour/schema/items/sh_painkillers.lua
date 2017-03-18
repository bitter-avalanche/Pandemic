--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
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

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 15, 0, player:GetMaxHealth() ) );
	player:BoostAttribute(self.name, ATB_ENDURANCE, 4, 300);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:GiveItem(Clockwork.item:CreateInstance("junk_emptypillbottle"));
end;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	if player:GetCharacterData("diseases") == "Migraine" then
		player:SetCharacterData( "diseases", "none" );
	end
end;

if (SERVER) then
	function ITEM:OnCustomFunction(player, name)
		if (name == "Give") then
			local lookingPly = player:GetEyeTrace().Entity
			if lookingPly:IsPlayer() then
				if lookingPly:GetCharacterData("diseases") == "Migraine" then
					lookingPly:SetCharacterData( "diseases", "none" );
					Clockwork.player:Notify(player, "You gave some painkillers to the person.");
					player:TakeItem(player:FindItemByID("painkillers"));
				end
			else
				Clockwork.player:Notify(player, "You must target a person!");
				return false;
			end;
		end;
	end;
end;

ITEM:Register();
