# Juggernaut Gamemode Runtime
scoreboard players remove ticks gm_general 1
scoreboard players operation seconds gm_general = ticks gm_general
execute if score ticks gm_general >= zero number run scoreboard players operation seconds gm_general /= twenty number
scoreboard players operation Time-Remaining gm_sidebar = seconds gm_general

scoreboard players remove @a[scores={dead=1,gm_lives=1..}] gm_lives 1

execute as @a[scores={gm_lives=0}] run scoreboard players set @s gm_lives -1
execute as @a[scores={gm_lives=-1}] run gamemode spectator @s

execute store result score players gm_general if entity @a[scores={gm_lives=1..}]
execute store result score playersTeam gm_general if entity @a[scores={gm_lives=1..},team=juggernautTeam]
execute store result score playersJuggernaut gm_general if entity @a[scores={gm_lives=1..},team=juggernaut]

execute if score players gm_general matches 2 run attribute @a[scores={gm_juggernaut=1},limit=1] minecraft:generic.max_health base set 20
execute if score players gm_general matches 3 run attribute @a[scores={gm_juggernaut=1},limit=1] minecraft:generic.max_health base set 24
execute if score players gm_general matches 4 run attribute @a[scores={gm_juggernaut=1},limit=1] minecraft:generic.max_health base set 28
execute if score players gm_general matches 5 run attribute @a[scores={gm_juggernaut=1},limit=1] minecraft:generic.max_health base set 32
execute if score players gm_general matches 6 run attribute @a[scores={gm_juggernaut=1},limit=1] minecraft:generic.max_health base set 36
execute if score players gm_general matches 7 run attribute @a[scores={gm_juggernaut=1},limit=1] minecraft:generic.max_health base set 40
execute if score players gm_general matches 8 run attribute @a[scores={gm_juggernaut=1},limit=1] minecraft:generic.max_health base set 44
execute if score players gm_general matches 9 run attribute @a[scores={gm_juggernaut=1},limit=1] minecraft:generic.max_health base set 48
execute if score players gm_general matches 10 run attribute @a[scores={gm_juggernaut=1},limit=1] minecraft:generic.max_health base set 52
execute if score players gm_general matches 11 run attribute @a[scores={gm_juggernaut=1},limit=1] minecraft:generic.max_health base set 56
execute if score players gm_general >= twelve number run attribute @a[scores={gm_juggernaut=1},limit=1] minecraft:generic.max_health base set 60

execute if score players gm_general = playersTeam gm_general if score playersJuggernaut gm_general matches 0 run function kitpvp:gamemodes/05-juggernaut/gm05-stop
execute if score players gm_general = playersJuggernaut gm_general if score playersTeam gm_general matches 0 run function kitpvp:gamemodes/05-juggernaut/gm05-stop
execute if score ticks gm_general matches 0 run function kitpvp:gamemodes/05-juggernaut/gm05-stop
