# Juggernaut Gamemode Setup
function kitpvp:gamemodes/_common/setup
function kitpvp:gamemodes/_common/teams-setup

tellraw @a[scores={optIn=1}] {"text":"This gamemode is Juggernaut. One player is randomly chosen to be the Juggernaut, who has to kill every other person on the map. Everybody else has to try to kill the Juggernaut.","color":"gold"}

team join juggernautTeam @a[scores={optIn=1}]

scoreboard objectives remove gm_juggernaut
scoreboard objectives add gm_juggernaut dummy
scoreboard players set @r[scores={optIn=1}] gm_juggernaut 1

team join juggernaut @a[scores={gm_juggernaut=1}]
scoreboard players set @a[scores={gm_juggernaut=1}] class 100
clear @a[scores={gm_juggernaut=1}]
attribute @a[scores={gm_juggernaut=1},limit=1] minecraft:generic.knockback_resistance base set 10

scoreboard objectives setdisplay sidebar

scoreboard players set @a[scores={optIn=1}] gm_lives 1

scoreboard objectives setdisplay list gm_kills

scoreboard players set playersTeam gm_general 0
scoreboard players set playersJuggernaut gm_general 0

tag @a[team=juggernautTeam,scores={optIn=1}] add group
function kitpvp:utility/internal/map-teleport/multi-player

scoreboard players set seconds gm_general 500
scoreboard players set run gm_general 5
scoreboard players set winner gm_general 0

scoreboard players operation ticks gm_general = seconds gm_general
scoreboard players operation ticks gm_general *= twenty number

function kitpvp:gamemodes/_common/bossbar
