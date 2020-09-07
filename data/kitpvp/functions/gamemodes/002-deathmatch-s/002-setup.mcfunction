# Deathmatch Gamemode Setup
team join none @a[scores={optIn=1}]

function kitpvp:gamemodes/_common/setup

tellraw @a[scores={optIn=1}] {"text":"This gamemode is Deathmatch. Whoever gets the most kills in 5 minutes wins.","color":"gold"}

scoreboard objectives setdisplay sidebar gm_kills
scoreboard objectives setdisplay list gm_kills

scoreboard objectives remove gm_kills-copy
scoreboard objectives add gm_kills-copy dummy

scoreboard players set seconds gm_general 300
scoreboard players set run gm_general 3
scoreboard players set playersInLead gm_general 0

scoreboard players operation ticks gm_general = seconds gm_general
scoreboard players operation ticks gm_general *= twenty number

function kitpvp:gamemodes/_common/bossbar

tag @a remove group

tag @a[scores={optIn=1},team=none] add group
function kitpvp:utility/internal/map-teleport/all-single-player
