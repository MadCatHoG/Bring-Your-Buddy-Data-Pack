##########################################
# Author: MadCat (youtube.com/MadCatHoG) 
# Date: March 26, 2020
# Version: 1.0
# Minecraft Version 1.13 / 1.14 / 1.15 / 1.16
# Description:
# Bring your buddy install function
##########################################

scoreboard objectives add tp trigger
scoreboard objectives add BYB.requests dummy
scoreboard objectives add BYB.levels dummy

# Levels price to pay
# If you change these values please update payment.mcfuntion as well
scoreboard players set Ovw2Ovw BYB.levels 3
scoreboard players set Ovw2Nether BYB.levels 5
scoreboard players set Ovw2End BYB.levels 10

scoreboard players set Nether2Ovw BYB.levels 5
scoreboard players set Nether2Nether BYB.levels 5
scoreboard players set Nether2End BYB.levels 7

scoreboard players set End2Ovw BYB.levels 10
scoreboard players set End2Nether BYB.levels 15
scoreboard players set End2End BYB.levels 5

# Time limit in seconds, default 30
scoreboard players set #limit_s BYB.requests 30


# Do not change anything below this line
tellraw @a ["",{"text":"Bring your buddy Pre release","bold":true,"color":"aqua"},{"text":" "},{"text":"by ","color":"green"},{"text":"MadCat","bold":true,"color":"green","underlined":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to check out MadCat on YouTube","color":"aqua"}]}},"clickEvent":{"action":"open_url","value":"https://youtube.com/MadCatHoG"}},{"text":" (Installed)","italic":true,"color":"green"}]
scoreboard players set #limit_t BYB.requests 20
scoreboard players operation #limit_t BYB.requests *= #limit_s BYB.requests
function byb:reset
