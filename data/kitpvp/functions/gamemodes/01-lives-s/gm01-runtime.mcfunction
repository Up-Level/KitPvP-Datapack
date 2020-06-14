# Lives Gamemode Runtime
scoreboard players remove @a[scores={dead=1,gm_lives=1..}] gm_lives 1

execute if entity @a[scores={gm_lives=0}] run tellraw @a ["",{"selector":"@a[scores={gm_lives=0}]","bold":true,"color":"red"},{"text":" has been Eliminated!","bold":true,"color":"red"}]
execute as @a[scores={gm_lives=0}] run scoreboard players set @s gm_lives -1
execute as @a[scores={gm_lives=-1}] run gamemode spectator @s

execute store result score players gm_general if entity @a[scores={gm_lives=1..}]
execute if score players gm_general matches 1 as @a[scores={gm_lives=1..}] at @s run function kitpvp:gamemodes/01-lives-s/gm01-stop
