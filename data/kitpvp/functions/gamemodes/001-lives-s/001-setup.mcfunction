# Lives Gamemode Setup
function kitpvp:gamemodes/_common/setup

tellraw @a[scores={optIn=1}] {"text":"This gamemode is Lives. Everyone has 3 lives, and the last person standing wins.","color":"gold"}

scoreboard players set @a[scores={optIn=1}] gm_lives 3
scoreboard objectives setdisplay list gm_lives

scoreboard objectives setdisplay sidebar gm_kills

team join none @a[scores={optIn=1}]

scoreboard players set run gm_general 1

tag @a remove group

tag @a[scores={optIn=1},team=none] add group
function kitpvp:utility/internal/map-teleport/all-single-player
