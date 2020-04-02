##########################################
# Author: MadCat (youtube.com/MadCatHoG) 
# Date: March 26, 2020
# Version: 1.0
# Minecraft Version 1.13 / 1.14 / 1.15 / 1.16
##########################################

#Checks bringer xp level
execute store result score @s BYB.levels run data get entity @s XpLevel 1

# Dimension 0 = Overworld
# Dimension -1 = The Nether
# Dimension 1 = The End

# Overworld Cases
execute if entity @s[nbt={Dimension:0}] run execute if entity @a[scores={tp=2},nbt={Dimension:0}] run execute if score @s BYB.levels >= Ovw2Ovw BYB.levels run tag @s add lvlok
execute if entity @s[nbt={Dimension:-1}] run execute if entity @a[scores={tp=2},nbt={Dimension:0}] run execute if score @s BYB.levels >= Ovw2Nether BYB.levels run tag @s add lvlok
execute if entity @s[nbt={Dimension:1}] run execute if entity @a[scores={tp=2},nbt={Dimension:0}] run execute if score @s BYB.levels >= Ovw2End BYB.levels run tag @s add lvlok

# The Nether Cases
execute if entity @s[nbt={Dimension:0}] run execute if entity @a[scores={tp=2},nbt={Dimension:-1}] run execute if score @s BYB.levels >= Nether2Ovw BYB.levels run tag @s add lvlok
execute if entity @s[nbt={Dimension:-1}] run execute if entity @a[scores={tp=2},nbt={Dimension:-1}] run execute if score @s BYB.levels >= Nether2Nether BYB.levels run tag @s add lvlok
execute if entity @s[nbt={Dimension:1}] run execute if entity @a[scores={tp=2},nbt={Dimension:-1}] run execute if score @s BYB.levels >= Nether2End BYB.levels run tag @s add lvlok

# The End Cases
execute if entity @s[nbt={Dimension:0}] run execute if entity @a[scores={tp=2},nbt={Dimension:1}] run execute if score @s BYB.levels >= End2Ovw BYB.levels run tag @s add lvlok
execute if entity @s[nbt={Dimension:-1}] run execute if entity @a[scores={tp=2},nbt={Dimension:1}] run execute if score @s BYB.levels >= End2Nether BYB.levels run tag @s add lvlok
execute if entity @s[nbt={Dimension:1}] run execute if entity @a[scores={tp=2},nbt={Dimension:1}] run execute if score @s BYB.levels >= End2End BYB.levels run tag @s add lvlok

# Negative Cases
execute unless entity @s[tag=lvlok] run execute if entity @a[scores={tp=2},limit=1] run tellraw @s ["",{"text":"You don't have enough levels to bring your buddy","bold":true,"color":"red"},{"text":"\n "}]
execute unless entity @s[tag=lvlok] run scoreboard players set @s BYB.requests 0