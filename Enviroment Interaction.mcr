COMMENT : The first stage is entering the environment, often done by pressing a key or walking into a door.  In this environment, we must stand at the entrance and press "X" and wait for the loading screen to finish.  We cannot add a hard timer for loading wait time because it varies from system to system.  What we can do, however, is exploit images AFTER the loading has finished, which will be the trigger to moving on with the script.

LABEL : Find Entrance
IF PIXEL COLOR EQUALS : 573 : 253 : 0 : 0
GOTO : Sigil Found
ENDIF
GOTO : Find Entrance
LABEL : Entrance Found
LABEL : Press X
DELAY : 50
Keyboard : X : KeyDown
DELAY : 50
Keyboard : X : KeyUp

COMMENT : After loading, we give the script an area to search for an exact pixel of purple using hex code.  Because the this color is tied to a character, it moves around the screen so we cannot used a fixed search and find script, but rather a "find HEX pixel in rectangle area x1,x2,y1,y2".

LABEL : Find NPC
IF PIXEL FOUND : 10027263 : 0 : 1 : 188 : 672 : 345 : 971
GOTO : NPC Found/Teleport
ENDIF
GOTO : Press X
DELAY : 50
GOTO : Find NPC
DELAY : 50
LABEL : NPC Found/Teleport
Keyboard : W : KeyDown
LABEL : Find Arena
IF PIXEL COLOR EQUALS : 969 : 426 : 14603989 : 0
GOTO : Pick Actions
ENDIF
DELAY : 50
GOTO : Find Arena

COMMENT : The rest of the code structure is repetitive, but this action menu is worth mentioning.  There's a 50% probability the action buttons are swapped each time you load in, so we use simple if statements with fixed pixel search to continue.

LABEL : Pick Actions
Keyboard : W : KeyUp
DELAY : 500
IF PIXEL COLOR EQUALS : 992 : 484 : 7479939 : 0
DELAY : 200
LABEL : CLick Right Side
Mouse : 1055 : 550 : Move : 0 : 0 : 0
DELAY : 100
Mouse : 1055 : 550 : Click : 0 : 0 : 0
DELAY : 300
Mouse : 950 : 550 : Click : 0 : 0 : 0
Mouse : 950 : 550 : Click : 0 : 0 : 0
DELAY : 1000
Mouse : 1000 : 550 : Click : 0 : 0 : 0
DELAY : 1000
Mouse : 1000 : 550 : Click : 0 : 0 : 0
GOTO : Arena Check
ELSE
DELAY : 200
LABEL : Click Left Side
Mouse : 950 : 550 : Move : 0 : 0 : 0
DELAY : 100
Mouse : 950 : 550 : Click : 0 : 0 : 0
DELAY : 300
Mouse : 1055 : 550 : Click : 0 : 0 : 0
Mouse : 1055 : 550 : Click : 0 : 0 : 0
DELAY : 1000
Mouse : 1000 : 550 : Click : 0 : 0 : 0
DELAY : 1000
Mouse : 1000 : 550 : Click : 0 : 0 : 0
LABEL : Arena Check
IF PIXEL COLOR EQUALS : 247 : 942 : 16552654 : 0
GOTO : Out of Arena Found
ENDIF
DELAY : 200 : 1 : 20
GOTO : Arena Check
LABEL : Out of Arena Found
DELAY : 300 : 1 : 40
Keyboard : W : KeyDown
DELAY : 500
Keyboard : W : KeyUp
DELAY : 100 : 1 : 50
LABEL : Teleport Out
Mouse : 1731 : 975 : Click : 0 : 0 : 0
Mouse : 1731 : 975 : Click : 0 : 0 : 0
DELAY : 500 : 1 : 50
Mouse : 1731 : 975 : Click : 0 : 0 : 0
Mouse : 1731 : 975 : Click : 0 : 0 : 0
DELAY : 500 : 1 : 50
Mouse : 1731 : 975 : Click : 0 : 0 : 0
Mouse : 1731 : 975 : Click : 0 : 0 : 0
DELAY : 500 : 1 : 50
Mouse : 1731 : 975 : Click : 0 : 0 : 0
Mouse : 1731 : 975 : Click : 0 : 0 : 0
