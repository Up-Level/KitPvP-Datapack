# Lives Gamemode Setup
function kitpvp:gamemodes/_common/setup
function kitpvp:gamemodes/_common/teams-setup

tellraw @a[scores={optIn=1}] {"text":"This gamemode is Lives. Everyone has 3 lives, and the last team standing wins.","color":"gold"}

scoreboard players set @a[scores={optIn=1}] gm_lives 3
scoreboard objectives setdisplay list gm_lives
scoreboard objectives setdisplay sidebar gm_kills

scoreboard players set winner gm_general 0
scoreboard players set run gm_general 2

# Teleport Teams to the Map
tag @a remove group

function kitpvp:utility/internal/map-teleport/4-teams
