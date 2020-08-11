# Team Deathmatch Gamemode Runtime
scoreboard players remove ticks gm_general 1
scoreboard players operation seconds gm_general = ticks gm_general
execute if score ticks gm_general > zero number run scoreboard players operation seconds gm_general /= twenty number
execute if score ticks gm_general <= zero number run scoreboard players operation seconds gm_general /= negative-twenty number

bossbar set 0 name [{"text":"Time Remaining: ","color":"gold"},{"score":{"objective":"gm_general","name":"seconds"},"color":"gold"},{"text":" seconds","color":"gold"}]
execute store result bossbar minecraft:0 value run scoreboard players get seconds gm_general

execute as @a[scores={optIn=1},team=red] run scoreboard players operation Red-Kills gm_sidebar += @s killBin
execute as @a[scores={optIn=1},team=blue] run scoreboard players operation Blue-Kills gm_sidebar += @s killBin
execute as @a[scores={optIn=1},team=green] run scoreboard players operation Green-Kills gm_sidebar += @s killBin
execute as @a[scores={optIn=1},team=yellow] run scoreboard players operation Yellow-Kills gm_sidebar += @s killBin

execute as @a[scores={optIn=1}] run scoreboard players operation killsRed gm_kills-copy = Red-Kills gm_sidebar
execute as @a[scores={optIn=1}] run scoreboard players operation killsBlue gm_kills-copy = Blue-Kills gm_sidebar
execute as @a[scores={optIn=1}] run scoreboard players operation killsGreen gm_kills-copy = Green-Kills gm_sidebar
execute as @a[scores={optIn=1}] run scoreboard players operation killsYellow gm_kills-copy = Yellow-Kills gm_sidebar

scoreboard players set highest gm_kills-copy 0
scoreboard players operation highest gm_kills-copy > killsRed gm_kills-copy
scoreboard players operation highest gm_kills-copy > killsBlue gm_kills-copy
scoreboard players operation highest gm_kills-copy > killsGreen gm_kills-copy
scoreboard players operation highest gm_kills-copy > killsYellow gm_kills-copy

scoreboard players operation killsRed gm_kills-copy -= highest gm_kills-copy
scoreboard players operation killsBlue gm_kills-copy -= highest gm_kills-copy
scoreboard players operation killsGreen gm_kills-copy -= highest gm_kills-copy
scoreboard players operation killsYellow gm_kills-copy -= highest gm_kills-copy

execute store result score players gm_general if entity @a[scores={optIn=1}]
execute if score players gm_general <= one number run function kitpvp:gamemodes/102-deathmatch-t/102-stop

execute if score ticks gm_general <= zero number if score killsRed gm_kills-copy matches 0 if score killsBlue gm_kills-copy < zero number if score killsGreen gm_kills-copy < zero number if score killsYellow gm_kills-copy < zero number run function kitpvp:gamemodes/102-deathmatch-t/102-stop
execute if score ticks gm_general <= zero number if score killsBlue gm_kills-copy matches 0 if score killsRed gm_kills-copy < zero number if score killsGreen gm_kills-copy < zero number if score killsYellow gm_kills-copy < zero number run function kitpvp:gamemodes/102-deathmatch-t/102-stop
execute if score ticks gm_general <= zero number if score killsGreen gm_kills-copy matches 0 if score killsBlue gm_kills-copy < zero number if score killsRed gm_kills-copy < zero number if score killsYellow gm_kills-copy < zero number run function kitpvp:gamemodes/102-deathmatch-t/102-stop
execute if score ticks gm_general <= zero number if score killsYellow gm_kills-copy matches 0 if score killsBlue gm_kills-copy < zero number if score killsGreen gm_kills-copy < zero number if score killsRed gm_kills-copy < zero number run function kitpvp:gamemodes/102-deathmatch-t/102-stop

execute if score ticks gm_general <= negative-one number run title @a[scores={optIn=1}] actionbar {"text":"Overtime!","color":"gold"}
