# Use the "target" and "owner" tag to decide this projectiles data

summon minecraft:shulker_bullet ~ ~ ~ {Tags:["temp"],Steps:5}

data modify entity @e[type=minecraft:shulker_bullet,limit=1,tag=temp] Owner set from entity @e[tag=owner,limit=1] UUID
data modify entity @e[type=minecraft:shulker_bullet,limit=1,tag=temp] Target set from entity @e[tag=target,limit=1] UUID

tag @e[tag=temp] remove temp
