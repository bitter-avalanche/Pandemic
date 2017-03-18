--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Military-grade Bandage";
ITEM.cost = 15;
<<<<<<< HEAD:cwphasefour/schema/items/sh_health_vial.lua
ITEM.model = "models/bloocobalt/l4d/items/w_eq_adrenaline.mdl";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.useText = "Inject";
ITEM.factions = {FACTION_MPF, FACTION_OTA};
=======
ITEM.model = "models/kali/miscstuff/stalker/aid/bandage.mdl";
ITEM.weight = 0.5;
ITEM.access = "v";
ITEM.useText = "Apply";
>>>>>>> refs/remotes/JakeDaBoss/Development:cwphasefour/schema/items/sh_med_military_bandage.lua
ITEM.category = "Medical"
ITEM.business = true;
ITEM.useSound = "items/medshot4.wav";
ITEM.description = "A plastic tube filled with a suspended liquid. It looks like an Epipen.";
ITEM.customFunctions = {"Give"};

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 20, 0, player:GetMaxHealth() ) );
	
	Clockwork.plugin:Call("PlayerHealed", player, player, self);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

if (SERVER) then
	function ITEM:OnCustomFunction(player, name)
		if (name == "Give") then
			Clockwork.player:RunClockworkCommand(player, "CharHeal", "health_vial");
		end;
	end;
end;

ITEM:Register();