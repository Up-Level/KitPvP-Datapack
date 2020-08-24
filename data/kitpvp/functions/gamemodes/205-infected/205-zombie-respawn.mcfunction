execute unless entity @s[scores={playerAliveX=0,playerAliveY=0,playerAliveZ=0}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["spawnPoint"],Marker:1b,Invisible:1b}
execute store result entity @e[tag=spawnPoint,limit=1] Pos[0] float 0.01 run scoreboard players get @s playerAliveX
execute store result entity @e[tag=spawnPoint,limit=1] Pos[1] float 0.01 run scoreboard players get @s playerAliveY
execute store result entity @e[tag=spawnPoint,limit=1] Pos[2] float 0.01 run scoreboard players get @s playerAliveZ
execute at @e[tag=spawnPoint,limit=1] run tp @s ~ ~ ~

scoreboard players set @s playerAliveX 0
scoreboard players set @s playerAliveY 0
scoreboard players set @s playerAliveZ 0
