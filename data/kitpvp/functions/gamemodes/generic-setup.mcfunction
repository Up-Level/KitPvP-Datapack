# Clear Inventory
clear @a[scores={optIn=1}]

# Teleport people to the map
execute if score map settings matches 1 run spreadplayers -1 -1 5 200 false @a[scores={optIn=1},team=none]
execute if score map settings matches 2 run spreadplayers 1981 -21 5 100 false @a[scores={optIn=1},team=none]
execute if score map settings matches 3 run spreadplayers 4000 35 5 200 false @a[scores={optIn=1},team=none]
execute if score map settings matches 4 run spreadplayers 6000 0 5 30 under 67 false @a[scores={optIn=1},team=none]
execute if score map settings matches 5 run spreadplayers 8000 0 5 100 false @a[scores={optIn=1},team=none]

execute if score map settings matches 1 run spreadplayers -1 -1 5 200 true @a[scores={optIn=1},team=!none]
execute if score map settings matches 2 run spreadplayers 1981 -21 5 100 true @a[scores={optIn=1},team=!none]
execute if score map settings matches 3 run spreadplayers 4000 35 5 200 true @a[scores={optIn=1},team=!none]
execute if score map settings matches 4 run spreadplayers 6000 0 5 30 under 67 true @a[scores={optIn=1},team=!none]
execute if score map settings matches 5 run spreadplayers 8000 0 5 100 true @a[scores={optIn=1},team=!none]

# Set player's gamemode to adventure if they're not already
gamemode adventure @a[scores={optIn=1}]

# Get Player UUIDs
execute as @a store result score @s UUID0 run data get entity @s UUID[0]
execute as @a store result score @s UUID1 run data get entity @s UUID[1]
execute as @a store result score @s UUID2 run data get entity @s UUID[2]
execute as @a store result score @s UUID3 run data get entity @s UUID[3]

# Reset Player Scoreboards
execute as @a[scores={optIn=1}] run function kitpvp:reset-player-scoreboards
