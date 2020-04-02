##########################################
# Author: MadCat (youtube.com/MadCatHoG) 
# Date: March 26, 2020
# Version: 1.0
# Minecraft Version 1.13 / 1.14 / 1.15 / 1.16
##########################################

#Once everyone has accepted teleport happens and triggers and scores are reseted
#execute as @s[scores={tp=3}] run 

# Case overworld to overworld Ovw2Ovw BYB.levels 3
execute if entity @s[nbt={Dimension:0}] run execute if entity @a[tag=lvlok,nbt={Dimension:0}] run xp add @a[tag=lvlok,limit=1] -3 levels
# Case overworld to nether Ovw2Nether BYB.levels 5
execute if entity @s[nbt={Dimension:0}] run execute if entity @a[tag=lvlok,nbt={Dimension:-1}] run xp add @a[tag=lvlok,limit=1] -5 levels
# Case overworld to the end Ovw2End BYB.levels 10
execute if entity @s[nbt={Dimension:0}] run execute if entity @a[tag=lvlok,nbt={Dimension:1}] run xp add @a[tag=lvlok,limit=1] -10 levels

# Case the nether to overworld Nether2Ovw BYB.levels 5
execute if entity @s[nbt={Dimension:-1}] run execute if entity @a[tag=lvlok,nbt={Dimension:0}] run xp add @a[tag=lvlok,limit=1] -5 levels
# Case the nether to the nether Nether2Nether BYB.levels 5
execute if entity @s[nbt={Dimension:-1}] run execute if entity @a[tag=lvlok,nbt={Dimension:-1}] run xp add @a[tag=lvlok,limit=1] -5 levels
# Case the nether to the end Nether2End BYB.levels 7
execute if entity @s[nbt={Dimension:-1}] run execute if entity @a[tag=lvlok,nbt={Dimension:1}] run xp add @a[tag=lvlok,limit=1] -7 levels

# Case the end to overworld End2Ovw BYB.levels 10
execute if entity @s[nbt={Dimension:1}] run execute if entity @a[tag=lvlok,nbt={Dimension:0}] run xp add @a[tag=lvlok,limit=1] -10 levels
# Case the end to the nether End2Nether BYB.levels 15
execute if entity @s[nbt={Dimension:1}] run execute if entity @a[tag=lvlok,nbt={Dimension:-1}] run xp add @a[tag=lvlok,limit=1] -10 levels
# Case the end to the end End2End BYB.levels 5
execute if entity @s[nbt={Dimension:1}] run execute if entity @a[tag=lvlok,nbt={Dimension:1}] run xp add @a[tag=lvlok,limit=1] -5 levels

tellraw @a ["",{"selector":"@s"}, {"text":" is being teleported to ","color":"aqua"},{"selector":"@a[tag=lvlok,limit=1]"}]
tp @s @a[scores={BYB.requests=2},limit=1]
function byb:reset