# Juggernaut Gamemode Runtime
scoreboard players remove ticks gm05-general 1
scoreboard players operation Time-Seconds gm05-time = ticks gm05-general
scoreboard players operation Time-Seconds gm05-time /= twenty gm05-general

scoreboard players remove @a[scores={dead=1,gm05-lives=1..}] gm05-lives 1

execute as @a[scores={gm05-lives=0}] run scoreboard players set @s gm05-lives -1
execute as @a[scores={gm05-lives=-1}] run gamemode spectator @s

execute store result score players gm05-general if entity @a[scores={gm05-lives=1..}]
execute store result score playersTeam gm05-general if entity @a[scores={gm05-lives=1..},team=juggernautTeam]
execute store result score playersJuggernaut gm05-general if entity @a[scores={gm05-lives=1..},team=juggernaut]

execute if score players gm05-general matches 2 run attribute @a[scores={gm05-juggernaut=1},limit=1] minecraft:generic.max_health base set 20
execute if score players gm05-general matches 3 run attribute @a[scores={gm05-juggernaut=1},limit=1] minecraft:generic.max_health base set 24
execute if score players gm05-general matches 4 run attribute @a[scores={gm05-juggernaut=1},limit=1] minecraft:generic.max_health base set 28
execute if score players gm05-general matches 5 run attribute @a[scores={gm05-juggernaut=1},limit=1] minecraft:generic.max_health base set 32
execute if score players gm05-general matches 6 run attribute @a[scores={gm05-juggernaut=1},limit=1] minecraft:generic.max_health base set 36
execute if score players gm05-general matches 7 run attribute @a[scores={gm05-juggernaut=1},limit=1] minecraft:generic.max_health base set 40
execute if score players gm05-general matches 8 run attribute @a[scores={gm05-juggernaut=1},limit=1] minecraft:generic.max_health base set 44
execute if score players gm05-general matches 9 run attribute @a[scores={gm05-juggernaut=1},limit=1] minecraft:generic.max_health base set 48
execute if score players gm05-general matches 10 run attribute @a[scores={gm05-juggernaut=1},limit=1] minecraft:generic.max_health base set 52
execute if score players gm05-general matches 11 run attribute @a[scores={gm05-juggernaut=1},limit=1] minecraft:generic.max_health base set 56
execute if score players gm05-general >= twelve gm05-general run attribute @a[scores={gm05-juggernaut=1},limit=1] minecraft:generic.max_health base set 60

execute if score players gm05-general = playersTeam gm05-general if score playersJuggernaut gm05-general matches 0 run function kitpvp:gamemodes/05-juggernaut/gm05-stop
execute if score players gm05-general = playersJuggernaut gm05-general if score playersTeam gm05-general matches 0 run function kitpvp:gamemodes/05-juggernaut/gm05-stop
execute if score ticks gm05-general matches 0 run function kitpvp:gamemodes/05-juggernaut/gm05-stop
