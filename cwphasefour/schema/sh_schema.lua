--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

Clockwork.kernel:IncludePrefixed("cl_schema.lua");
Clockwork.kernel:IncludePrefixed("cl_hooks.lua");
Clockwork.kernel:IncludePrefixed("cl_theme.lua");
Clockwork.kernel:IncludePrefixed("sh_hooks.lua");
Clockwork.kernel:IncludePrefixed("sv_schema.lua");
Clockwork.kernel:IncludePrefixed("sv_hooks.lua");

Schema.customPermits = {};

Clockwork.animation:AddCivilProtectionModel("models/eliteghostcp.mdl");
Clockwork.animation:AddCivilProtectionModel("models/eliteshockcp.mdl");
Clockwork.animation:AddCivilProtectionModel("models/leet_police2.mdl");
Clockwork.animation:AddCivilProtectionModel("models/sect_police2.mdl");
Clockwork.animation:AddCivilProtectionModel("models/policetrench.mdl");

Clockwork.option:SetKey("default_date", {month = 11, year = 2014, day = 29});
Clockwork.option:SetKey("default_time", {minute = 0, hour = 0, day = 1});
Clockwork.option:SetKey("format_singular_cash", "%a");
Clockwork.option:SetKey("model_shipment", "models/items/item_item_crate.mdl");
Clockwork.option:SetKey("intro_image", "pandemicrp/pandemic_logo");
Clockwork.option:SetKey("schema_logo", "pandemicrp/pandemic_logo");
Clockwork.option:SetKey("format_cash", "%a %n");
Clockwork.option:SetKey("menu_music", "music/hl2_song19.mp3");
Clockwork.option:SetKey("name_cash", "Dollars");
Clockwork.option:SetKey("model_cash", "models/props/cs_assault/Money.mdl");
Clockwork.option:SetKey("gradient", "pandemicrp/bg_gradient");

Clockwork.config:ShareKey("intro_text_small");
Clockwork.config:ShareKey("intro_text_big");
Clockwork.config:ShareKey("business_cost");
Clockwork.config:ShareKey("permits");

Clockwork.quiz:SetEnabled(true);
Clockwork.quiz:AddQuestion("Do you understand that roleplaying is slow paced and relaxed?", 1, "Yes.", "No.");
Clockwork.quiz:AddQuestion("Can you type properly, using capital letters and full-stops?", 2, "yes i can", "Yes, I can.");
Clockwork.quiz:AddQuestion("You do not need weapons to roleplay, do you understand?", 1, "Yes.", "No.");
Clockwork.quiz:AddQuestion("You do not need items to roleplay, do you understand?", 1, "Yes.", "No.");
Clockwork.quiz:AddQuestion("What do you think serious roleplaying is about?", 2, "Collecting items and upgrades.", "Developing your character.");
Clockwork.quiz:AddQuestion("What universe is this roleplaying game set in?", 1, "Real Life.", "Half-Life 2.");

Clockwork.flag:Add("v", "Light Weapons", "Access to light, and largely legal weaponry and ammo, and other goods.");
Clockwork.flag:Add("V", "Heavy Weapons / Black Market", "Access to heavy blackmarket weaponry and ammo.");

-- A function to add a custom permit.
function Schema:AddCustomPermit(name, flag, model)
	local formattedName = string.gsub(name, "[%s%p]", "");
	local lowerName = string.lower(name);
	
	self.customPermits[ string.lower(formattedName) ] = {
		model = model,
		name = name,
		flag = flag,
		key = Clockwork.kernel:SetCamelCase(formattedName, true)
	};
end;