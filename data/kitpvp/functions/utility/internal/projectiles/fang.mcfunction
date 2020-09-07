# Use the "target" and "owner" tag to decide this projectiles data

summon minecraft:evoker_fangs ~ ~ ~ {Tags:["temp"]}

data modify entity @e[type=minecraft:evoker_fangs,limit=1,tag=temp] Owner set from entity @e[tag=owner,limit=1] UUID
