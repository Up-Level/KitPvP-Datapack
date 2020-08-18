# Clear Inventory
clear @a[scores={optIn=1}]
effect clear @a[scores={optIn=1}]

#region Teleport Players to the Map
execute if score map settings matches 1 run spreadplayers -1 -1 5 200 false @a[scores={optIn=1},team=none]
execute if score map settings matches 2 run spreadplayers 1981 -21 5 100 false @a[scores={optIn=1},team=none]
execute if score map settings matches 3 run spreadplayers 4000 35 5 200 false @a[scores={optIn=1},team=none]
execute if score map settings matches 4 run spreadplayers 6000 0 5 30 under 67 false @a[scores={optIn=1},team=none]
execute if score map settings matches 5 run spreadplayers 8000 0 5 100 false @a[scores={optIn=1},team=none]
#endregion

# Set players' gamemode to adventure if they're not already
gamemode adventure @a[scores={optIn=1}]

function kitpvp:utility/delete-entities

# Reset Player Scoreboards
execute as @a[scores={optIn=1}] run function kitpvp:utility/reset-player-scoreboards
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
scoreboard players set ticks gm_general 20000
scoreboard players set seconds gm_general 1000

scoreboard objectives remove gm_sidebar
scoreboard objectives add gm_sidebar dummy

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

# Set Gamemode to Running
scoreboard players set gamemode-running settings 1
scoreboard players set gamemode-bin settings 0
