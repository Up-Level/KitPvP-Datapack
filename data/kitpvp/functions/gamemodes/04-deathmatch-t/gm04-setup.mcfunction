# Deathmatch Gamemode Setup
function kitpvp:gamemodes/generic-setup

tellraw @a[scores={optIn=1}] {"text":"This gamemode is Deathmatch. Whoever gets the most kills in 5 minutes wins.","color":"gold"}

scoreboard players set @a[scores={optIn=1}] respawn 0

scoreboard objectives remove gm03-time
scoreboard objectives add gm03-time dummy {"text":"Time Remaining","color":"gold"}
scoreboard players set Time-Seconds gm03-time 300
scoreboard objectives setdisplay sidebar gm03-time

scoreboard objectives remove gm03-kills
scoreboard objectives add gm03-kills playerKillCount {"text":"Kills","color":"gold"}
scoreboard objectives setdisplay list gm03-kills

scoreboard objectives remove gm03-kills-copy
scoreboard objectives add gm03-kills-copy dummy

scoreboard objectives remove gm03-deaths
scoreboard objectives add gm03-deaths deathCount {"text":"Deaths","color":"gold"}

scoreboard objectives remove gm03-general
scoreboard objectives add gm03-general dummy
scoreboard players set one gm03-general 1
scoreboard players set ticks gm03-general 6000
scoreboard players set twenty gm03-general 20
scoreboard players set run gm03-general 1
scoreboard players set playersWon gm03-general 0

scoreboard players set gamemode-running settings 1
scoreboard players set gamemode-bin settings 0
