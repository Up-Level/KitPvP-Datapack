# Use the "target" and "owner" tag to decide this projectiles data

summon minecraft:shulker_bullet ~ ~ ~ {Tags:["temp"]}

execute store result score uuid0 temp run data get entity @e[tag=owner,limit=1] UUID[0] 1
execute store result score uuid1 temp run data get entity @e[tag=owner,limit=1] UUID[1] 1
execute store result score uuid2 temp run data get entity @e[tag=owner,limit=1] UUID[2] 1
execute store result score uuid3 temp run data get entity @e[tag=owner,limit=1] UUID[3] 1

execute store result entity @e[tag=temp,limit=1] Owner[0] int 1 run scoreboard players get uuid0 temp
execute store result entity @e[tag=temp,limit=1] Owner[1] int 1 run scoreboard players get uuid1 temp
execute store result entity @e[tag=temp,limit=1] Owner[2] int 1 run scoreboard players get uuid2 temp
execute store result entity @e[tag=temp,limit=1] Owner[3] int 1 run scoreboard players get uuid3 temp

execute store result score uuid0 temp run data get entity @e[tag=target,limit=1] UUID[0] 1
execute store result score uuid1 temp run data get entity @e[tag=target,limit=1] UUID[1] 1
execute store result score uuid2 temp run data get entity @e[tag=target,limit=1] UUID[2] 1
execute store result score uuid3 temp run data get entity @e[tag=target,limit=1] UUID[3] 1

execute store result entity @e[tag=temp,limit=1] Target[0] int 1 run scoreboard players get uuid0 temp
execute store result entity @e[tag=temp,limit=1] Target[1] int 1 run scoreboard players get uuid1 temp
execute store result entity @e[tag=temp,limit=1] Target[2] int 1 run scoreboard players get uuid2 temp
execute store result entity @e[tag=temp,limit=1] Target[3] int 1 run scoreboard players get uuid3 temp

tag @e[tag=owner] remove owner
tag @e[tag=target] remove target

tag @e[tag=temp] remove temp
