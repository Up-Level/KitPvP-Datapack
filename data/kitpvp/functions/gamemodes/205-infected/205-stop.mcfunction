# Juggernaut Gamemode Stop
execute if score winner gm_general matches 1 run title @a[scores={optIn=1}] title "The Infected have Won!"
execute if score winner gm_general matches 2 run title @a[scores={optIn=1}] title "The Uninfected have Won!"

execute if score winner gm_general matches 1 run scoreboard players add @a[scores={class=102}] wins 1
execute if score winner gm_general matches 2 run scoreboard players add @a[team=uninfected] wins 1

execute if score winner gm_general matches 1 as @a[scores={class=102}] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1
execute if score winner gm_general matches 2 as @a[team=uninfected] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1

scoreboard players set @a[team=infected] class 6

team join none @a[scores={optIn=1}]

scoreboard players set run gm_general 0
function kitpvp:gamemodes/_common/stop
