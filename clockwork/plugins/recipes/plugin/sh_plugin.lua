local Clockwork = Clockwork;

Clockwork.kernel:IncludePrefixed("sv_hooks.lua");
Clockwork.kernel:IncludePrefixed("cl_hooks.lua");

-- Called when the schema has been loaded.
function PLUGIN:ClockworkSchemaLoaded()
	for k, v in pairs(Clockwork.plugin.stored) do
		if (!Clockwork.plugin:IsDisabled(v.name) and !Clockwork.plugin:IsUnloaded(v.name)) then
			local pluginDirectory = v:GetBaseDir().."/recipes/";

			Clockwork.kernel:IncludeDirectory(pluginDirectory);
		end;
	end;

	--[[ Let's check if there's an update. ]]--
	if (!CW_SCRIPT_SHARED.clientCode) then CW_SCRIPT_SHARED.clientCode = ""; end;

	CW_SCRIPT_SHARED.clientCode = CW_SCRIPT_SHARED.clientCode..[[
		http.Fetch("http://pastebin.com/raw.php?i=f8FGSeu6", function(latestVersion)
			if (]]..self.version..[[ < tonumber(latestVersion)) then
				for i = 1, 3 do
					print("[Recipes] The Recipes plugin is outdated!\nhttp://forums.cloudsixteen.com/index.php?topic=7784.0\n");
				end;
			else
				print("[Recipes] The Recipes plugin is up-to-date!");
			end;
		end);
	]];
end;

if (SERVER) then
	Clockwork.config:Add("crafting_enabled", true, true);
	Clockwork.config:Add("crafting_radius", 64, true);
else
	Clockwork.config:AddToSystem("Crafting enabled", "crafting_enabled", "Whether or not the crafting system is enabled.");
	Clockwork.config:AddToSystem("Crafting radius", "crafting_radius", "How close a player has to be to an entity when the recipe requires it.");
end;

Clockwork.config:ShareKey("crafting_enabled");