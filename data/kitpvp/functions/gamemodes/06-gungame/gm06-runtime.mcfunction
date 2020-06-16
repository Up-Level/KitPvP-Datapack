# Deathmatch Gamemode Runtime
scoreboard players remove ticks gm_general 1
scoreboard players operation seconds gm_general = ticks gm_general
execute if score ticks gm_general > zero number run scoreboard players operation seconds gm_general /= twenty number
execute if score ticks gm_general <= zero number run scoreboard players operation seconds gm_general /= negative-twenty number
scoreboard players operation Time-Remaining gm_sidebar = seconds gm_general

execute store result bossbar minecraft:0 value run scoreboard players get seconds gm_general
bossbar set 0 name [{"text":"Time Remaining: ","color":"gold"},{"score":{"objective":"gm_general","name":"seconds"},"color":"gold"},{"text":" seconds","color":"gold"}]

execute store result score players gm_general if entity @a[scores={optIn=1}]

execute as @a[scores={optIn=1,killBin=1..}] unless score @s class matches 23 run scoreboard players add @s class 1
clear @a[scores={optIn=1,killBin=1..}]
effect clear @a[scores={optIn=1,killBin=1..}]
# Just in case
scoreboard players set @a[scores={optIn=1,killBin=1..}] killBin 0

execute if score ticks gm_general <= zero number run function kitpvp:gamemodes/06-gungame/gm06-stop
execute if entity @a[scores={optIn=1,class=23}] run function kitpvp:gamemodes/06-gungame/gm06-stop

execute if score ticks gm_general <= negative-one number run title @a[scores={optIn=1}] actionbar {"text":"Overtime!","color":"gold"}
