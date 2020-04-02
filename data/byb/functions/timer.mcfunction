##########################################
# Author: MadCat (youtube.com/MadCatHoG) 
# Date: March 26, 2020
# Version: 1.0
# Minecraft Version 1.13 / 1.14 / 1.15 / 1.16
##########################################

scoreboard players add #timer BYB.requests 1

execute if score #timer BYB.requests >= #limit_t BYB.requests run tellraw @a ["",{"selector":"@a[scores={tp=1..}]"},{"text":"'s teleport requested has expired","italic":true,"color":"gray"},{"text":"\n"}]
execute if score #timer BYB.requests >= #limit_t BYB.requests run function byb:reset
