# Elimination Gamemode Runtime
scoreboard players remove @a[scores={dead=1,gm_lives=1..}] gm_lives 1

execute if entity @a[scores={gm_lives=0}] run tellraw @a ["",{"selector":"@a[scores={gm_lives=0}]","bold":true,"color":"red"},{"text":" has been Eliminated!","bold":true,"color":"red"}]
execute as @a[scores={gm_lives=0}] run scoreboard players set @s gm_lives -1
execute as @a[scores={gm_lives=-1}] run gamemode spectator @s

execute store result score players gm_general if entity @a[scores={gm_lives=1..}]
execute store result score redPlayers gm_general if entity @a[scores={gm_lives=1..},team=red]
execute store result score bluePlayers gm_general if entity @a[scores={gm_lives=1..},team=blue]
execute store result score greenPlayers gm_general if entity @a[scores={gm_lives=1..},team=green]
execute store result score yellowPlayers gm_general if entity @a[scores={gm_lives=1..},team=yellow]

execute if score redPlayers gm_general >= one number if score bluePlayers gm_general matches 0 if score greenPlayers gm_general matches 0 if score yellowPlayers gm_general matches 0 run function kitpvp:gamemodes/203-elimination/new-round
execute if score bluePlayers gm_general >= one number if score redPlayers gm_general matches 0 if score greenPlayers gm_general matches 0 if score yellowPlayers gm_general matches 0 run function kitpvp:gamemodes/203-elimination/new-round
execute if score greenPlayers gm_general >= one number if score bluePlayers gm_general matches 0 if score redPlayers gm_general matches 0 if score yellowPlayers gm_general matches 0 run function kitpvp:gamemodes/203-elimination/new-round
execute if score yellowPlayers gm_general >= one number if score bluePlayers gm_general matches 0 if score greenPlayers gm_general matches 0 if score redPlayers gm_general matches 0 run function kitpvp:gamemodes/203-elimination/new-round
