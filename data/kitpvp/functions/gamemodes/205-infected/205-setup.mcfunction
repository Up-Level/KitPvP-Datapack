# Infected Gamemode Setup
function kitpvp:gamemodes/_common/setup

tellraw @a[scores={optIn=1}] {"text":"This gamemode is Infected. One player is randomly chosen to be Infected after 10 seconds, who has to infect every other person on the map. All uninfected players must try to survive until the time runs out.","color":"gold"}

team join uninfected @a[scores={optIn=1}]

scoreboard objectives modify gm_sidebar displayname {"text":"Infected","color":"gold"}
scoreboard objectives setdisplay sidebar gm_sidebar

scoreboard objectives setdisplay list gm_kills

scoreboard players set playersUninfected gm_general 0
scoreboard players set playersInfected gm_general 0

scoreboard players set seconds gm_general 300
scoreboard players set run gm_general 9
scoreboard players set winner gm_general 0

scoreboard players operation ticks gm_general = seconds gm_general
scoreboard players operation ticks gm_general *= twenty number

function kitpvp:gamemodes/_common/bossbar

tag @a[scores={optIn=1},team=none] add group
function kitpvp:utility/internal/map-teleport/all-single-player
