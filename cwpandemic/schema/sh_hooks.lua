--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

-- Called when the Clockwork shared variables are added.
function Schema:ClockworkAddSharedVars(globalVars, playerVars)
	playerVars:Number("antidepressants", true);
	playerVars:String("customClass");
	playerVars:String("citizenID", true);
	playerVars:Number("scanner", true);
	playerVars:Number("clothes", true);
	playerVars:Number("tied");
	globalVars:Number("PKMode");
end;