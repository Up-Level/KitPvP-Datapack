# Lives Gamemode Runtime
scoreboard players remove @a[scores={dead=1,gm02-lives=1..}] gm02-lives 1

execute if entity @a[scores={gm02-lives=0}] run tellraw @a ["",{"selector":"@a[scores={gm02-lives=0}]","bold":true,"color":"red"},{"text":" has been Eliminated!","bold":true,"color":"red"}]
execute as @a[scores={gm02-lives=0}] run scoreboard players set @s gm02-lives -1
execute as @a[scores={gm02-lives=-1}] run gamemode spectator @s

execute store result score players gm02-general if entity @a[scores={gm02-lives=1..}]
execute store result score players-red gm02-general if entity @a[scores={gm02-lives=1..},team=red]
execute store result score players-blue gm02-general if entity @a[scores={gm02-lives=1..},team=blue]
execute store result score players-green gm02-general if entity @a[scores={gm02-lives=1..},team=green]
execute store result score players-yellow gm02-general if entity @a[scores={gm02-lives=1..},team=yellow]

execute if score players-red gm02-general >= one number if score players-blue gm02-general matches 0 if score players-green gm02-general matches 0 if score players-yellow gm02-general matches 0 as @a[scores={gm02-lives=1..}] at @s run function kitpvp:gamemodes/02-lives-t/gm02-stop
execute if score players-blue gm02-general >= one number if score players-red gm02-general matches 0 if score players-green gm02-general matches 0 if score players-yellow gm02-general matches 0 as @a[scores={gm02-lives=1..}] at @s run function kitpvp:gamemodes/02-lives-t/gm02-stop
execute if score players-green gm02-general >= one number if score players-blue gm02-general matches 0 if score players-red gm02-general matches 0 if score players-yellow gm02-general matches 0 as @a[scores={gm02-lives=1..}] at @s run function kitpvp:gamemodes/02-lives-t/gm02-stop
execute if score players-yellow gm02-general >= one number if score players-blue gm02-general matches 0 if score players-green gm02-general matches 0 if score players-red gm02-general matches 0 as @a[scores={gm02-lives=1..}] at @s run function kitpvp:gamemodes/02-lives-t/gm02-stop
