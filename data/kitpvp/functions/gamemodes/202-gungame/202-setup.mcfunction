# Gungame Gamemode Setup
team join none @a[scores={optIn=1}]

function kitpvp:gamemodes/_common/setup

tellraw @a[scores={optIn=1}] {"text":"This gamemode is Gungame. Each kill you get changes your class until all the classes have been played. The first person to play all classes wins.","color":"gold"}

scoreboard players set @a[scores={optIn=1}] class 2

scoreboard objectives remove gm_displayClass
scoreboard objectives add gm_displayClass dummy

scoreboard objectives modify gm_sidebar displayname {"text":"Class","color":"gold"}
scoreboard players set @a[scores={optIn=1}] gm_sidebar 1
scoreboard objectives setdisplay sidebar gm_sidebar

scoreboard players set run gm_general 6

tag @a remove group

tag @a[scores={optIn=1},team=none] add group
function kitpvp:utility/internal/map-teleport/all-single-player
