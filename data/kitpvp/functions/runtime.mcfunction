# General runtime commands
execute as @a run execute unless entity @s[nbt={Inventory:[{id:"minecraft:golden_carrot"}]},gamemode=adventure] run replaceitem entity @s hotbar.8 minecraft:golden_carrot
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=item]

# Kill arrows that have lived for 300 ticks
scoreboard players set @e[type=minecraft:arrow,tag=!arrowChecked] arrowTime 300
tag @e[type=arrow,tag=!arrowChecked] add arrowChecked
scoreboard players remove @e[type=minecraft:arrow] arrowTime 1
kill @e[type=minecraft:arrow,scores={arrowTime=..0}]

# Crossbow arrows don't fall
execute as @e[type=minecraft:arrow,nbt={ShotFromCrossbow:1b}] run data modify entity @s NoGravity set value 1

# Runtime during gamemode
execute if score gamemode-running settings matches 1 run function kitpvp:runtime-gamemode

# Runtime not during gamemode
execute if score gamemode-running settings matches 0 run function kitpvp:runtime-spawn

# Kill player if they are below y0 and change their kills by -1
execute as @a at @s[y=-10,distance=..10] run kill @s

# On death, do these commands
execute as @a[scores={dead=1}] run function kitpvp:on-death
