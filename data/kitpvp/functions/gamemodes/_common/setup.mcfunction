# Clear Inventory
clear @a[scores={optIn=1}]

# Teleport Players to the Map
execute if score map settings matches 1 run spreadplayers -1 -1 5 200 false @a[scores={optIn=1},team=none]
execute if score map settings matches 2 run spreadplayers 1981 -21 5 100 false @a[scores={optIn=1},team=none]
execute if score map settings matches 3 run spreadplayers 4000 35 5 200 false @a[scores={optIn=1},team=none]
execute if score map settings matches 4 run spreadplayers 6000 0 5 30 under 67 false @a[scores={optIn=1},team=none]
execute if score map settings matches 5 run spreadplayers 8000 0 5 100 false @a[scores={optIn=1},team=none]

# Set player's gamemode to adventure if they're not already
gamemode adventure @a[scores={optIn=1}]

# Get Player UUIDs
execute as @a store result score @s UUID0 run data get entity @s UUID[0]
execute as @a store result score @s UUID1 run data get entity @s UUID[1]
execute as @a store result score @s UUID2 run data get entity @s UUID[2]
execute as @a store result score @s UUID3 run data get entity @s UUID[3]

# Reset Player Scoreboards
execute as @a[scores={optIn=1}] run function kitpvp:reset-player-scoreboards
scoreboard players set @a[scores={optIn=1}] respawn 0

# Initiate Common Gamemode Scoreboards
scoreboard objectives remove gm_kills
scoreboard objectives add gm_kills playerKillCount {"text":"Kills","color":"gold"}

scoreboard objectives remove gm_deaths
scoreboard objectives add gm_deaths deathCount {"text":"Deaths","color":"gold"}

scoreboard objectives remove gm_lives
scoreboard objectives add gm_lives dummy

scoreboard objectives remove gm_general
scoreboard objectives add gm_general dummy
scoreboard players set players gm_general 0
scoreboard players set run gm_general 1
scoreboard players set ticks gm_general 100000000

scoreboard objectives remove gm_sidebar
scoreboard objectives add gm_sidebar dummy

# Set Gamemode to Running
scoreboard players set gamemode-running settings 1
scoreboard players set gamemode-bin settings 0
