# Use the "target" and "owner" tag to decide this projectiles data

summon minecraft:fireball ~ ~ ~ {Tags:["temp"]}

data modify entity @e[type=minecraft:fireball,limit=1,tag=temp] Owner set from entity @e[tag=owner,limit=1] UUID

tag @e[tag=temp] remove temp
