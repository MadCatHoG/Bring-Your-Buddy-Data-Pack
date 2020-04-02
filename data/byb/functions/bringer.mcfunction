##########################################
# Author: MadCat (youtube.com/MadCatHoG) 
# Date: March 26, 2020
# Version: 1.0
# Minecraft Version 1.13 / 1.14 / 1.15 / 1.16
##########################################

#Bringer clicks, sends requestor a message
tellraw @s ["",{"text":"Waiting for player to accept...","color":"gray","italic":"true"}]

tellraw @a[scores={tp=2},limit=1] ["",{"selector":"@a[scores={BYB.requests=1}]"}, {"text":" wants to bring you ","color":"aqua"},{"text":"[Click here to Accept]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @a[scores={tp=2}] tp 3"}},{"text":"\n "}]
scoreboard players set @a[scores={BYB.requests=1}] BYB.requests 2
