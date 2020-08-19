# Clear Inventory
clear @a[scores={optIn=1}]
effect clear @a[scores={optIn=1}]

#Teleport Players to the Map
execute as @a[scores={optIn=1},team=none] run function kitpvp:utility/internal/solo-map-tp

# Set up spectators
scoreboard players reset @a[tag=spectator] optIn
gamemode spectator @a[tag=spectator]
execute as @a[tag=spectator] run tp @s @r[scores={optIn=1}]

# Set players' gamemode to adventure if they're not already
gamemode adventure @a[scores={optIn=1}]

execute as @a run attribute @s generic.knockback_resistance base set 0

function kitpvp:utility/internal/delete-entities

# Reset Player Scoreboards
execute as @a[scores={optIn=1}] run function kitpvp:utility/internal/reset-player-scoreboards
scoreboard players set @a[scores={optIn=1}] respawn 0
scoreboard players set @a[scores={optIn=1}] timeAlive 0

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
