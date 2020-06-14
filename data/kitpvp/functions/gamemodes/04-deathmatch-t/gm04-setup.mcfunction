# Team Deathmatch Gamemode Setup
function kitpvp:gamemodes/_common/setup
function kitpvp:gamemodes/_common/teams-setup

tellraw @a[scores={optIn=1}] {"text":"This gamemode is Team Deathmatch. Whichever Team gets the most kills in 5 minutes wins.","color":"gold"}

scoreboard objectives modify gm_sidebar displayname {"text":"Team Deathmatch","color":"gold"}
scoreboard players set Time-Remaining gm_sidebar 300
scoreboard players set Red-Kills gm_sidebar 0
scoreboard players set Blue-Kills gm_sidebar 0
scoreboard players set Green-Kills gm_sidebar 0
scoreboard players set Yellow-Kills gm_sidebar 0

scoreboard objectives setdisplay sidebar gm_sidebar

scoreboard objectives setdisplay list gm_kills

scoreboard objectives remove gm_kills-copy
scoreboard objectives add gm_kills-copy dummy

scoreboard players set ticks gm_general 6000
scoreboard players set seconds gm_general 300
scoreboard players set run gm_general 4
scoreboard players set winner gm_general 0
