# VIP Gamemode Stop
execute if score winner gm_general matches 1 run scoreboard players add @a[team=red] wins 1
execute if score winner gm_general matches 2 run scoreboard players add @a[team=blue] wins 1
execute if score winner gm_general matches 3 run scoreboard players add @a[team=green] wins 1
execute if score winner gm_general matches 4 run scoreboard players add @a[team=yellow] wins 1

execute if score winner gm_general matches 1 run title @a[scores={optIn=1}] title {"text":"Red Team has Won!","color":"red"}
execute if score winner gm_general matches 2 run title @a[scores={optIn=1}] title {"text":"Blue Team has Won!","color":"blue"}
execute if score winner gm_general matches 3 run title @a[scores={optIn=1}] title {"text":"Green Team has Won!","color":"green"}
execute if score winner gm_general matches 4 run title @a[scores={optIn=1}] title {"text":"Yellow Team has Won!","color":"yellow"}

scoreboard players set run gm_general 0
function kitpvp:gamemodes/_common/stop
