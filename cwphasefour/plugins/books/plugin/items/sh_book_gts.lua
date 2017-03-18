--[[
	Written by SharpOB.
--]]

ITEM = Clockwork.item:New("book_base");
ITEM.cost = 5;
ITEM.name = "Your Guide to Surviving the Apocalypse";
ITEM.model = "models/props_lab/binderbluelabel.mdl";
ITEM.business = true;
ITEM.uniqueID = "book_gts";
ITEM.description = "A blue book with 'Your Guide to Surviving the Apoycalypse' written on.";
ITEM.bookInformation = [[
<font color='red' size='4'>Written by Paul Smart.</font>

So, you find youself in a calamity. Zombies have taken over the world. In this book,
we intend to outline the prerequisites for your success, in the hope that, if an apocalypse
indeed occurs, you, and your closest family and friends, are ready.

Step 1: Gather supplies
Supplies are the most important. They dictate how long you survive. Make sure to grab lots of
food items and water, and take a variety. You cannot survive on baked beans alone.
<font color='red'>Do NOT go to any popular store. There will be nothing left, and a increased
risk of infection.</font>

Step 2: Weapons
It cannot be garunteed that you will never meet a zombie. If you do, you'll certainly need to be
prepared. A shotgun is perhaps the best type of weapon. Remember, though, that zombies are
attracted to noise, and gunfire is pretty loud.
<font color='red'>Do NOT stay in the same area after firing a gun.</font>

Step 3: Shelter
It's important to stay close to home. You have an advantage in a place where you know the lay
of the land. You'll need to pick a sheltered area with very few entry points. Grouping together
with other people can be beneficial. Sports centres are very closed areas. Make sure to
barricade up the doors and windows.
<font color='red'>Do NOT have a group exceeding 15 members. That's simply too many.</font>

Step 4: Exercise common sense
Common sense is something everyone possesses, but in stressful situations just disappears.
Keep a hold on it, and stay calm.

Good luck.
]];

ITEM:Register();