# Lives Gamemode Stop
title @a[scores={optIn=1}] title [{"selector":"@a[scores={gm01-lives=1..}]"}, " has Won!"]
scoreboard players add @a[scores={gm01-lives=1..}] wins 1
playsound minecraft:entity.firework_rocket.twinkle master @a[scores={optIn=1}]
playsound minecraft:ui.toast.challenge_complete master @a[scores={gm01-lives=1..}] ~ ~ ~ 1.25
scoreboard players set * survivalistLevel 0
tp @a[scores={optIn=1}] @e[name="spawn",limit=1]
gamemode adventure @a[scores={optIn=1}]
clear @a[scores={optIn=1}]

scoreboard players set @a gm01-lives 3
scoreboard objectives setdisplay list wins
scoreboard objectives setdisplay sidebar optIn

scoreboard players set run gm01-general 0
scoreboard players set gamemode-running settings 0

gamerule fallDamage true
