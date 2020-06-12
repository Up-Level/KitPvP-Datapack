# Team Deathmatch Gamemode Setup
function kitpvp:gamemodes/generic-setup

tellraw @a[scores={optIn=1}] {"text":"This gamemode is Team Deathmatch. Whichever Team gets the most kills in 5 minutes wins.","color":"gold"}

scoreboard players set @a[scores={optIn=1}] respawn 0

scoreboard objectives remove gm04-time
scoreboard objectives add gm04-time dummy {"text":"Time Remaining","color":"gold"}
scoreboard players set Time-Seconds gm04-time 300
scoreboard objectives setdisplay sidebar gm04-time

scoreboard objectives remove gm04-kills
scoreboard objectives add gm04-kills playerKillCount {"text":"Kills","color":"gold"}
scoreboard objectives setdisplay list gm04-kills

scoreboard objectives remove gm04-kills-copy
scoreboard objectives add gm04-kills-copy dummy

scoreboard objectives remove gm04-deaths
scoreboard objectives add gm04-deaths deathCount {"text":"Deaths","color":"gold"}

scoreboard objectives remove gm04-general
scoreboard objectives add gm04-general dummy
scoreboard players set ticks gm04-general 6000
scoreboard players set seconds gm04-general 300
scoreboard players set run gm04-general 1
scoreboard players set winner gm04-general 0

scoreboard objectives remove gm04-teamKills
scoreboard objectives add gm04-teamKills dummy
scoreboard players set killsRed gm04-teamKills 0
scoreboard players set killsBlue gm04-teamKills 0
scoreboard players set killsGreen gm04-teamKills 0
scoreboard players set killsYellow gm04-teamKills 0

scoreboard players set gamemode-running settings 1
scoreboard players set gamemode-bin settings 0
