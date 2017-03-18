--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("United States Marine Corps");

FACTION.useFullName = true;
FACTION.whitelist = true;
FACTION.material = "pandemicrp/factions/military";
FACTION.models = {
	female = {"models/player/sanic/marinew.mdl"},
	male = {"models/player/sanic/marinew.mdl"}
};

-- Called when a player is transferred to the faction.
function FACTION:OnTransferred(player, faction, name)
	if (Schema:PlayerIsCombine(player)) then
		if (name) then
			local models = self.models[ string.lower( player:QueryCharacter("gender") ) ];

			if (models) then
				player:SetCharacterData("model", models[ math.random(#models) ], true);

				Clockwork.player:SetName(player, name, true);
			end;
		else
			return false, "You need to specify a name as the third argument!";
		end;
	end;
end;

-- Called when a player's scoreboard class is needed.
function PLUGIN:GetPlayerScoreboardClass(player)
 local faction1 = player:GetFaction();
 local clientfaction = Clockwork.Client:GetFaction();
  if (faction1 == FACTION_INCOG) then
  if (Clockwork.Client:GetFaction() == FACTION_INCOG) then
   return "Incognito faction"; -- Edit this part for the name on the scoreboard.
  elseif (Clockwork.Client:IsAdmin()) then
   return "Hidden Faction(ADMIN/OOC View)";
  else
   return false;
  end;
 end;
end;

-- Called when a player's model should be assigned for the faction.
function FACTION:GetModel(player, character)
	if (character.gender == GENDER_MALE) then
		return self.models.male[1];
	else
		return self.models.female[1];
	end;
end;

FACTION_MILITARY = FACTION:Register();
