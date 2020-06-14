# Lives Gamemode Setup
function kitpvp:gamemodes/generic-setup

tellraw @a[scores={optIn=1}] {"text":"This gamemode is Lives. Everyone has 3 lives, and the last person standing wins.","color":"gold"}

scoreboard players set @a[scores={optIn=1}] respawn 0

scoreboard objectives remove gm01-lives
scoreboard objectives add gm01-lives dummy
scoreboard players set @a[scores={optIn=1}] gm01-lives 3
scoreboard objectives setdisplay list gm01-lives

scoreboard objectives remove gm01-kills
scoreboard objectives add gm01-kills playerKillCount {"text":"Kills","color":"gold"}
scoreboard objectives setdisplay sidebar gm01-kills

scoreboard objectives remove gm01-deaths
scoreboard objectives add gm01-deaths deathCount {"text":"Deaths","color":"gold"}

scoreboard objectives remove gm01-general
scoreboard objectives add gm01-general dummy
scoreboard players set players gm01-general 0
scoreboard players set run gm01-general 1

scoreboard players set gamemode-running settings 1
scoreboard players set gamemode-bin settings 0

team join none @a[scores={optIn=1}]
