# Lives Gamemode Runtime
scoreboard players remove @a[scores={dead=1,gm01-lives=1..}] gm01-lives 1

execute if entity @a[scores={gm01-lives=0}] run tellraw @a [{"selector":"@a[scores={gm01-lives=0}]"}, " has been Eliminated!"]
execute as @a[scores={gm01-lives=0}] run scoreboard players set @s gm01-lives -1
execute as @a[scores={gm01-lives=-1}] run gamemode spectator @s

execute store result score players gm01-general if entity @a[scores={gm01-lives=1..}]
execute if score players gm01-general matches 1 as @a[scores={gm01-lives=1..}] at @s run function kitpvp:gamemodes/01-lives-s/gm01-stop
