# Use the "target" and "owner" tag to decide this projectiles data

summon minecraft:arrow ~ ~ ~ {Tags:["temp"],Motion:[0.0d,0.0d,0.0d]}

data modify entity @e[type=minecraft:arrow,limit=1,tag=temp] Owner set from entity @e[tag=owner,limit=1] UUID

execute store result entity @e[type=minecraft:arrow,limit=1,tag=temp] Motion[0] double 0.01 run scoreboard players get mot0 temp
execute store result entity @e[type=minecraft:arrow,limit=1,tag=temp] Motion[1] double 0.01 run scoreboard players get mot1 temp
execute store result entity @e[type=minecraft:arrow,limit=1,tag=temp] Motion[2] double 0.01 run scoreboard players get mot2 temp
