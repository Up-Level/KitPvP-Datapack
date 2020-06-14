# Deathmatch Gamemode Setup
team join none @a[scores={optIn=1}]

function kitpvp:gamemodes/_common/setup

tellraw @a[scores={optIn=1}] {"text":"This gamemode is Deathmatch. Whoever gets the most kills in 5 minutes wins.","color":"gold"}

scoreboard objectives modify gm_sidebar displayname {"text":"Deathmatch","color":"gold"}
scoreboard players set Time-Remaining gm_sidebar 300
scoreboard objectives setdisplay sidebar gm_sidebar
scoreboard objectives setdisplay list gm_kills

scoreboard objectives remove gm_kills-copy
scoreboard objectives add gm_kills-copy dummy

scoreboard players set ticks gm_general 6000
scoreboard players set seconds gm_general 300
scoreboard players set run gm_general 3
scoreboard players set playersInLead gm_general 0
