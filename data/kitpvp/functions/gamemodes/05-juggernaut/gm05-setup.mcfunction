# Juggernaut Gamemode Setup
function kitpvp:gamemodes/generic-setup

tellraw @a[scores={optIn=1}] {"text":"This gamemode is Juggernaut. One player is randomly chosen to be the Juggernaut, who has to kill every other person on the map. Everybody else has to try to kill the Juggernaut.","color":"gold"}

scoreboard players set @a[scores={optIn=1}] respawn 0

team join juggernautTeam @a[scores={optIn=1}]

scoreboard objectives remove gm05-juggernaut
scoreboard objectives add gm05-juggernaut dummy
scoreboard players set @r[scores={optIn=1}] gm05-juggernaut 1

team join juggernaut @a[scores={gm05-juggernaut=1}]
scoreboard players set @a[scores={gm05-juggernaut=1}] class 100
clear @a[scores={gm05-juggernaut=1}]
attribute @a[scores={gm05-juggernaut=1},limit=1] minecraft:generic.knockback_resistance base set 10

scoreboard objectives remove gm05-time
scoreboard objectives add gm05-time dummy {"text":"Time Remaining","color":"gold"}
scoreboard players set Time-Seconds gm05-time 300
scoreboard objectives setdisplay sidebar gm05-time

scoreboard objectives remove gm05-lives
scoreboard objectives add gm05-lives dummy
scoreboard players set @a[scores={optIn=1}] gm05-lives 1

scoreboard objectives remove gm05-kills
scoreboard objectives add gm05-kills playerKillCount {"text":"Kills","color":"gold"}
scoreboard objectives setdisplay list gm05-kills

scoreboard objectives remove gm05-general
scoreboard objectives add gm05-general dummy

scoreboard players set players gm05-general 0
scoreboard players set playersTeam gm05-general 0
scoreboard players set playersJuggernaut gm05-general 0

scoreboard players set one gm05-general 1
scoreboard players set run gm05-general 1
scoreboard players set winner gm05-general 0

scoreboard players set ticks gm05-general 10000
scoreboard players set twenty gm05-general 20
scoreboard players set twelve gm05-general 12

scoreboard players set gamemode-running settings 1
scoreboard players set gamemode-bin settings 0
