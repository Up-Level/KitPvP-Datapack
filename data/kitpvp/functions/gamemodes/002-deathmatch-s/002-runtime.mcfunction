# Deathmatch Gamemode Runtime
scoreboard players remove ticks gm_general 1
scoreboard players operation seconds gm_general = ticks gm_general
execute if score ticks gm_general > zero number run scoreboard players operation seconds gm_general /= twenty number
execute if score ticks gm_general <= zero number run scoreboard players operation seconds gm_general /= negative-twenty number

bossbar set 0 name [{"text":"Time Remaining: ","color":"gold"},{"score":{"objective":"gm_general","name":"seconds"},"color":"gold"},{"text":" seconds","color":"gold"}]
execute store result bossbar minecraft:0 value run scoreboard players get seconds gm_general

execute as @a[scores={optIn=1}] run scoreboard players operation @s gm_kills-copy = @s gm_kills
scoreboard players set highest gm_kills-copy 0
scoreboard players operation highest gm_kills-copy > @a[scores={optIn=1}] gm_kills-copy
scoreboard players operation @a[scores={optIn=1}] gm_kills-copy -= highest gm_kills-copy

execute store result score players gm_general if entity @a[scores={optIn=1}]

scoreboard players set playersInLead gm_general 0
execute as @a[scores={optIn=1}] if score @s gm_kills-copy matches 0 run scoreboard players add playersInLead gm_general 1

execute if score ticks gm_general <= zero number if score playersInLead gm_general matches 1 run function kitpvp:gamemodes/002-deathmatch-s/002-stop
execute if score players gm_general <= one number run function kitpvp:gamemodes/002-deathmatch-s/002-stop

execute if score ticks gm_general <= negative-one number run title @a[scores={optIn=1}] actionbar {"text":"Overtime!","color":"gold"}
