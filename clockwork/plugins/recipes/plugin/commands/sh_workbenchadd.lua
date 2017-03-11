local Clockwork = Clockwork;

local COMMAND = Clockwork.command:New("WorkbenchAdd");
COMMAND.tip = "Place a workbench at the target location.";
COMMAND.access = "s";

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local pos = player:GetEyeTraceNoCursor().HitPos;

	local workbench = ents.Create("cw_workbench");
		workbench:SetPos(Vector(pos.x, pos.y, pos.z + 15));
	workbench:Spawn();
end;

COMMAND:Register();