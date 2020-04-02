##########################################
# Author: MadCat (youtube.com/MadCatHoG) 
# Date: March 26, 2020
# Version: 1.0
# Minecraft Version 1.13 / 1.14 / 1.15 / 1.16
##########################################

scoreboard players reset @a tp
scoreboard players enable @a tp
scoreboard players reset @a BYB.requests

tag @a[tag=lvlok] remove lvlok

scoreboard players set #starttimer BYB.requests 0
scoreboard players set #timer BYB.requests 0