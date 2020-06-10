# Teleport people to the map
execute if score map settings matches 1 run spreadplayers -1 -1 30 200 false @a[scores={optIn=1}]
execute if score map settings matches 2 run spreadplayers 1981 -21 15 100 false @a[scores={optIn=1}]
execute if score map settings matches 3 run spreadplayers 4000 35 30 200 false @a[scores={optIn=1}]

# Set player's gamemode to adventure if they're not already
gamemode adventure @a[scores={optIn=1}]

# Get Player UUIDs
execute as @a store result score @s UUID0 run data get entity @s UUID[0]
execute as @a store result score @s UUID1 run data get entity @s UUID[1]
execute as @a store result score @s UUID2 run data get entity @s UUID[2]
execute as @a store result score @s UUID3 run data get entity @s UUID[3]

# Reset Chef Scoreboards
scoreboard players set @a[scores={optIn=1,class=15}] chef-fork 1
scoreboard players set @a[scores={optIn=1,class=15}] dropTrident 0
scoreboard players set @a[scores={optIn=1,class=15}] throwTrident 0
