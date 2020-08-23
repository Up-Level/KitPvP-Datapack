# Gungame Gamemode Runtime

execute store result score players gm_general if entity @a[scores={optIn=1}]

execute as @a[scores={optIn=1,killBin=1..}] unless score @s class matches 23 run scoreboard players operation @s class += @s killBin
clear @a[scores={optIn=1,killBin=1..}]
effect clear @a[scores={optIn=1,killBin=1..}]
# Just in case

execute if entity @a[scores={optIn=1,class=23}] run function kitpvp:gamemodes/202-gungame/202-stop

execute as @a[scores={optIn=1}] run title @s actionbar [{"text":"You are class ","color":"gold"},{"score":{"name":"@s","objective":"gm_kills"}},"/22"]
