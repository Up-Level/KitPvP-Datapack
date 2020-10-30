# Gungame Gamemode Runtime

execute store result score players gm_general if entity @a[scores={optIn=1}]

execute as @a[scores={optIn=1,killBin=1..}] run scoreboard players operation @s class += @s killBin
execute as @a[scores={optIn=1,killBin=..-1}] run scoreboard players operation @s class += @s killBin

execute as @a[scores={optIn=1,class=..1}] run scoreboard players set @s class 2
execute as @a[scores={optIn=1,class=22..}] run scoreboard players set @s class 21

clear @a[scores={optIn=1,killBin=1..}]
effect clear @a[scores={optIn=1,killBin=1..}]

execute if entity @a[scores={optIn=1,class=21}] run function kitpvp:gamemodes/202-gungame/202-stop

execute as @a[scores={optIn=1}] run scoreboard players operation @s gm_displayClass = @s class
execute as @a[scores={optIn=1}] run scoreboard players operation @s gm_displayClass -= one number
execute as @a[scores={optIn=1}] run scoreboard players operation @s gm_sidebar = @s gm_displayClass

execute as @a[scores={optIn=1}] run title @s actionbar [{"text":"You are class ","color":"gold"},{"score":{"name":"@s","objective":"gm_sidebar"}},"/20"]
