# Elimination Gamemode Setup
function kitpvp:gamemodes/_common/setup
function kitpvp:gamemodes/_common/teams-setup

scoreboard players set @a[scores={optIn=1}] gm_lives 1
tellraw @a[scores={optIn=1}] {"text":"This gamemode is Elimination. The first team to win 3 rounds wins. Be the last team standing to win a round.","color":"gold"}

scoreboard players set Red-Score gm_sidebar 0
scoreboard players set Blue-Score gm_sidebar 0
scoreboard players set Green-Score gm_sidebar 0
scoreboard players set Yellow-Score gm_sidebar 0

scoreboard objectives setdisplay list gm_kills
scoreboard objectives modify gm_sidebar displayname {"text":"Elimination","color":"gold"}
scoreboard objectives setdisplay sidebar gm_sidebar

scoreboard players set winner gm_general 0
scoreboard players set winnerOfRound gm_general 0
scoreboard players set run gm_general 7
