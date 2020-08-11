# Elimination Gamemode Runtime
execute if score ticks gm_general > zero number run scoreboard players remove ticks gm_general 1
scoreboard players operation seconds gm_general = ticks gm_general
execute if score ticks gm_general > zero number run scoreboard players operation seconds gm_general /= twenty number

execute unless score ticks gm_general <= zero number run bossbar set 0 name [{"score":{"objective":"gm_general","name":"seconds"},"color":"gold"},{"text":" seconds until the Control Point is unlocked.","color":"gold"}]
execute unless score ticks gm_general <= zero number store result bossbar minecraft:0 value run scoreboard players get seconds gm_general

execute if score ticks gm_general matches 0 run function gamemodes/203-elimination/203-control-point-setup
execute if score ticks gm_general matches -1 run function gamemodes/203-elimination/203-control-point

scoreboard players remove @a[scores={dead=1,gm_lives=1..}] gm_lives 1

execute as @a[scores={gm_lives=0}] run scoreboard players set @s gm_lives -1
execute as @a[scores={gm_lives=-1}] run gamemode spectator @s

execute store result score players gm_general if entity @a[scores={gm_lives=1..}]
execute store result score redPlayers gm_general if entity @a[scores={gm_lives=1..},team=red]
execute store result score bluePlayers gm_general if entity @a[scores={gm_lives=1..},team=blue]
execute store result score greenPlayers gm_general if entity @a[scores={gm_lives=1..},team=green]
execute store result score yellowPlayers gm_general if entity @a[scores={gm_lives=1..},team=yellow]

execute if score redPlayers gm_general >= one number if score bluePlayers gm_general matches 0 if score greenPlayers gm_general matches 0 if score yellowPlayers gm_general matches 0 run function kitpvp:gamemodes/203-elimination/203-end-elim
execute if score bluePlayers gm_general >= one number if score redPlayers gm_general matches 0 if score greenPlayers gm_general matches 0 if score yellowPlayers gm_general matches 0 run function kitpvp:gamemodes/203-elimination/203-end-elim
execute if score greenPlayers gm_general >= one number if score bluePlayers gm_general matches 0 if score redPlayers gm_general matches 0 if score yellowPlayers gm_general matches 0 run function kitpvp:gamemodes/203-elimination/203-end-elim
execute if score yellowPlayers gm_general >= one number if score bluePlayers gm_general matches 0 if score greenPlayers gm_general matches 0 if score redPlayers gm_general matches 0 run function kitpvp:gamemodes/203-elimination/203-end-elim
