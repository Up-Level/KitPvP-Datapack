# Use the "target" and "owner" tag to decide this projectiles data

summon minecraft:fireball ~ ~ ~ {Tags:["temp"],Motion:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d]}

data modify entity @e[type=minecraft:fireball,limit=1,tag=temp] Owner set from entity @e[tag=owner,limit=1] UUID

execute store result entity @e[type=minecraft:fireball,limit=1,tag=temp] Motion[0] double 0.01 run scoreboard players get mot0 temp
execute store result entity @e[type=minecraft:fireball,limit=1,tag=temp] Motion[1] double 0.01 run scoreboard players get mot1 temp
execute store result entity @e[type=minecraft:fireball,limit=1,tag=temp] Motion[2] double 0.01 run scoreboard players get mot2 temp

execute store result entity @e[type=minecraft:fireball,limit=1,tag=temp] power[0] double 0.01 run scoreboard players get pow0 temp
execute store result entity @e[type=minecraft:fireball,limit=1,tag=temp] power[1] double 0.01 run scoreboard players get pow1 temp
execute store result entity @e[type=minecraft:fireball,limit=1,tag=temp] power[2] double 0.01 run scoreboard players get pow2 temp

tag @e[tag=temp] remove temp
