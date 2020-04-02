##########################################
# Author: MadCat (youtube.com/MadCatHoG) 
# Date: March 26, 2020
# Version: 1.0
# Minecraft Version 1.13 / 1.14 / 1.15 / 1.16
# Description:
# Bring your buddy uninstall function
##########################################

tag @a remove lvlok
scoreboard objectives remove tp
scoreboard objectives remove BYB.requests
scoreboard objectives remove BYB.levels

tellraw @a ["",{"text":"Bring Your Buddy Pre Release","bold":true,"color":"dark_aqua"},{"text":" ","bold":true,"color":"green"},{"text":"by ","color":"green"},{"text":"MadCat","bold":true,"color":"green","underlined":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to check out MadCat on YouTube","color":"aqua"}]}},"clickEvent":{"action":"open_url","value":"https://youtube.com/MadCatHoG"}},{"text":" (Uninstalled/Disabled)","italic":true,"color":"green"}]
tellraw @a ["",{"text":"To install again use the "},{"text":"/datapack enable","italic":true},{"text":" command"}]
datapack disable "file/BringYourBuddy_Pre.zip" 