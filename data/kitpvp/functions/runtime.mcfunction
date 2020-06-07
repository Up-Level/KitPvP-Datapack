# General runtime commands
execute as @a run execute unless entity @s[nbt={Inventory:[{id:"minecraft:golden_carrot"}]},gamemode=adventure] run replaceitem entity @s hotbar.8 minecraft:golden_carrot
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=item]

# Kill arrows that have lived for 300 ticks, Multiply crossbow speed and set no gravity
scoreboard players set @e[type=arrow,tag=!arrowChecked] arrowTime 300

execute as @e[type=arrow,nbt={ShotFromCrossbow:1b},tag=!arrowChecked] run data modify entity @s NoGravity set value 1

execute as @e[type=arrow,nbt={ShotFromCrossbow:1b},tag=!arrowChecked] run execute store result score @s ArrowMotion0 run data get entity @s Motion[0] 1000
execute as @e[type=arrow,nbt={ShotFromCrossbow:1b},tag=!arrowChecked] run execute store result score @s ArrowMotion1 run data get entity @s Motion[1] 1000
execute as @e[type=arrow,nbt={ShotFromCrossbow:1b},tag=!arrowChecked] run execute store result score @s ArrowMotion2 run data get entity @s Motion[2] 1000

execute as @e[type=arrow,nbt={ShotFromCrossbow:1b},tag=!arrowChecked] run scoreboard players operation @s ArrowMotion0 *= crossbow-arrow-speed-multiplier settings
execute as @e[type=arrow,nbt={ShotFromCrossbow:1b},tag=!arrowChecked] run scoreboard players operation @s ArrowMotion1 *= crossbow-arrow-speed-multiplier settings
execute as @e[type=arrow,nbt={ShotFromCrossbow:1b},tag=!arrowChecked] run scoreboard players operation @s ArrowMotion2 *= crossbow-arrow-speed-multiplier settings

execute as @e[type=arrow,nbt={ShotFromCrossbow:1b},tag=!arrowChecked] store result entity @s Motion[0] double 0.001 run scoreboard players get @s ArrowMotion0
execute as @e[type=arrow,nbt={ShotFromCrossbow:1b},tag=!arrowChecked] store result entity @s Motion[1] double 0.001 run scoreboard players get @s ArrowMotion1
execute as @e[type=arrow,nbt={ShotFromCrossbow:1b},tag=!arrowChecked] store result entity @s Motion[2] double 0.001 run scoreboard players get @s ArrowMotion2

tag @e[type=arrow,tag=!arrowChecked] add arrowChecked
scoreboard players remove @e[type=minecraft:arrow] arrowTime 1
kill @e[type=minecraft:arrow,scores={arrowTime=..0}]

# Keep player Y on scoreboard
execute as @a store result score @s playerY run data get entity @s Pos[1] 100

# Runtime during gamemode
execute if score gamemode-running settings matches 1 run function kitpvp:runtime-gamemode

# Runtime not during gamemode
execute if score gamemode-running settings matches 0 run function kitpvp:runtime-spawn

# Put all players with no team into the "none" team
execute as @a[team=] run team join none @s

# On death, do these commands
execute as @a[scores={dead=1}] run function kitpvp:on-death
