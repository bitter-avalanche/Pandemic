--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Government Official");

FACTION.useFullName = true;
FACTION.whitelist = true;
FACTION.material = "pandemicrp/factions/govt_official";
FACTION.models = {
	female = {
		"models/tnb/citizens/female_1.mdl",
		"models/tnb/citizens/female_2.mdl",
		"models/tnb/citizens/female_3.mdl",
		"models/tnb/citizens/female_4.mdl",
		"models/tnb/citizens/female_5.mdl",
		"models/tnb/citizens/female_6.mdl",
		"models/tnb/citizens/female_7.mdl",
		"models/tnb/citizens/female_8.mdl",
		"models/tnb/citizens/female_9.mdl",	
		"models/tnb/citizens/female_10.mdl",	
		"models/tnb/citizens/female_11.mdl"
	},
	male = {
		"models/tnb/citizens/male_01.mdl",
		"models/tnb/citizens/male_02.mdl",
		"models/tnb/citizens/male_03.mdl",
		"models/tnb/citizens/male_04.mdl",
		"models/tnb/citizens/male_05.mdl",
		"models/tnb/citizens/male_06.mdl",
		"models/tnb/citizens/male_07.mdl",
		"models/tnb/citizens/male_08.mdl",
		"models/tnb/citizens/male_09.mdl",
		"models/tnb/citizens/male_10.mdl",
		"models/tnb/citizens/male_11.mdl",
		"models/tnb/citizens/male_12.mdl",
		"models/tnb/citizens/male_13.mdl",
		"models/tnb/citizens/male_14.mdl",
		"models/tnb/citizens/male_15.mdl",
		"models/tnb/citizens/male_16.mdl",
		"models/tnb/citizens/male_17.mdl",		
		"models/tnb/citizens/male_18.mdl"
		};
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

FACTION_GOVT = FACTION:Register();