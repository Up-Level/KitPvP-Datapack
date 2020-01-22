# Lives Gamemode Stop
execute if score players-red gm02-general >= one gm02-general if score players-blue gm02-general matches 0 if score players-green gm02-general matches 0 if score players-yellow gm02-general matches 0 run scoreboard players set winner gm02-general 1
execute if score players-blue gm02-general >= one gm02-general if score players-red gm02-general matches 0 if score players-green gm02-general matches 0 if score players-yellow gm02-general matches 0 run scoreboard players set winner gm02-general 2
execute if score players-green gm02-general >= one gm02-general if score players-red gm02-general matches 0 if score players-blue gm02-general matches 0 if score players-yellow gm02-general matches 0 run scoreboard players set winner gm02-general 3
execute if score players-yellow gm02-general >= one gm02-general if score players-red gm02-general matches 0 if score players-blue gm02-general matches 0 if score players-green gm02-general matches 0 run scoreboard players set winner gm02-general 4

execute if score winner gm02-general matches 1 run scoreboard players add @a[team=red] wins 1
execute if score winner gm02-general matches 2 run scoreboard players add @a[team=blue] wins 1
execute if score winner gm02-general matches 3 run scoreboard players add @a[team=green] wins 1
execute if score winner gm02-general matches 4 run scoreboard players add @a[team=yellow] wins 1

execute if score winner gm02-general matches 1 run playsound minecraft:ui.toast.challenge_complete master @a[scores={gm02-lives=1..}] ~ ~ ~ 1.25
execute if score winner gm02-general matches 2 run playsound minecraft:ui.toast.challenge_complete master @a[scores={gm02-lives=1..}] ~ ~ ~ 1.25
execute if score winner gm02-general matches 3 run playsound minecraft:ui.toast.challenge_complete master @a[scores={gm02-lives=1..}] ~ ~ ~ 1.25
execute if score winner gm02-general matches 4 run playsound minecraft:ui.toast.challenge_complete master @a[scores={gm02-lives=1..}] ~ ~ ~ 1.25

playsound minecraft:entity.firework_rocket.twinkle master @a[scores={optIn=1}]
tp @a[scores={optIn=1}] @e[name="spawn",limit=1]
gamemode adventure @a[scores={optIn=1}]
clear @a[scores={optIn=1}]

scoreboard players set * gm02-lives 3
scoreboard objectives setdisplay list wins
scoreboard objectives setdisplay sidebar optIn

scoreboard players set run gm02-general 0
scoreboard players set gamemode-running settings 0

gamerule fallDamage true
