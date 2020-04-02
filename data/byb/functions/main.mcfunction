##########################################
# Author: MadCat (youtube.com/MadCatHoG) 
# Date: March 26, 2020
# Version: 1.0
# Minecraft Version 1.13 / 1.14 / 1.15 / 1.16
# Description:
# Bring your buddy main loop function
##########################################

# Teleport request sent
execute as @a[scores={tp=1}] run function byb:requestor

# Bringer accepted
execute as @a[scores={BYB.requests=1}] run function byb:lvlcheck
execute as @a[scores={BYB.requests=1},tag=lvlok] run function byb:bringer
# Requestor accepts
execute as @a[scores={tp=3}] run function byb:payment

execute if score #starttimer BYB.requests matches 1..1 run function byb:timer
