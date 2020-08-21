# VIP Gamemode Setup
function kitpvp:gamemodes/_common/setup
function kitpvp:gamemodes/_common/teams-setup

tellraw @a[scores={optIn=1}] {"text":"This gamemode is VIP. Each team has a VIP that if they die, their team loses. Kill every other team's VIP to win.","color":"gold"}

scoreboard objectives modify gm_sidebar displayname {"text":"VIP","color":"gold"}
scoreboard players set Red-Kills gm_sidebar 0
scoreboard players set Blue-Kills gm_sidebar 0
scoreboard players set Green-Kills gm_sidebar 0
scoreboard players set Yellow-Kills gm_sidebar 0

scoreboard objectives setdisplay sidebar gm_sidebar
scoreboard objectives setdisplay list gm_kills

tag @r[scores={optIn=1},team=red,tag=!vip,limit=1] add vip
tag @r[scores={optIn=1},team=blue,tag=!vip,limit=1] add vip
tag @r[scores={optIn=1},team=green,tag=!vip,limit=1] add vip
tag @r[scores={optIn=1},team=yellow,tag=!vip,limit=1] add vip

scoreboard players set @a[tag=vip] class 101
tellraw @a[tag=vip] {"text":"You are your team's VIP. Try not to die!","color":"gold"}

scoreboard objectives remove gm_kills-copy
scoreboard objectives add gm_kills-copy dummy

scoreboard players set run gm_general 8
scoreboard players set winner gm_general 0

scoreboard players set redEliminated gm_general 0
scoreboard players set blueEliminated gm_general 0
scoreboard players set greenEliminated gm_general 0
scoreboard players set yellowEliminated gm_general 0