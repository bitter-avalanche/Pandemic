local DISEASE = Clockwork.disease:New("Migraine");
DISEASE.description = "A sudden onset of migraine. This one isn't pretty.";
DISEASE.incubationTime = 5;
DISEASE.infectuous = false;
DISEASE.extraSickTime = 6;
DISEASE.immuneFactions = {"Metropolice Force", "Overwatch Transhuman Arm"};
DISEASE.transmissionType = "hybrid";
DISEASE.severity = 65;
DISEASE.lethality = 0;

function DISEASE:OnTemporaryEffect(player)
	player:EmitSound("ambient/voices/citizen_beaten"..math.random(1, 5)..".wav");
end;

DISEASE:Register();