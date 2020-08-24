kill @e[tag=spawnPoint]

execute unless entity @s[scores={playerAliveX=0,playerAliveY=0,playerAliveZ=0}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["spawnPoint"],Marker:1b,Invisible:1b}
execute store result entity @e[tag=spawnPoint,limit=1] Pos[0] double 0.01 run scoreboard players get @s playerAliveX
execute store result entity @e[tag=spawnPoint,limit=1] Pos[1] double 0.01 run scoreboard players get @s playerAliveY
execute store result entity @e[tag=spawnPoint,limit=1] Pos[2] double 0.01 run scoreboard players get @s playerAliveZ
tp @s @e[tag=spawnPoint,limit=1]

scoreboard players set @s playerAliveX 0
scoreboard players set @s playerAliveY 0
scoreboard players set @s playerAliveZ 0
