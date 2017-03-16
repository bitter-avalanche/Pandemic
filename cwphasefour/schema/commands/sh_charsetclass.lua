--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local Clockwork = Clockwork;

local COMMAND = Clockwork.command:New("CharSetClass");
COMMAND.tip = "Set a character's class.";
COMMAND.text = "<string Name> <string Class>";
COMMAND.access = "o";
COMMAND.arguments = 2;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local target = Clockwork.player:FindByID( arguments[1] )
	local class = Clockwork.class:FindByID(arguments[2]);
	if (class) then
		if (target) then
			target:SetCharacterData( "Rank", class.index );
			Clockwork.class:Set(target, class.index);
			Clockwork.player:NotifyAll(player:Name().." set "..target:Name().."'s class/rank to "..arguments[2]..".");
		else
			Clockwork.player:Notify(player, arguments[1].." is not a valid character!");
		end;
	else
		Clockwork.player:Notify(player, arguments[2].." is not a valid class");
	end;
end;

COMMAND:Register();