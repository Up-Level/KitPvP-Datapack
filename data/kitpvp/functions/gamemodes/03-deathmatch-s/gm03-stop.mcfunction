# Lives Gamemode Stop
title @a title [{"selector":"@a[scores={gm03-kills-copy=0}]"}, " has Won!"]
scoreboard players add @a[scores={gm03-kills-copy=0}] wins 1
playsound minecraft:entity.firework_rocket.twinkle master @a[scores={optIn=1}]
playsound minecraft:ui.toast.challenge_complete master @a[scores={gm03-kills-copy=0}] ~ ~ ~ 1.25
tp @a[scores={optIn=1}] @e[name="spawn",limit=1]
gamemode adventure @a[scores={optIn=1}]
clear @a[scores={optIn=1}]

scoreboard objectives setdisplay list wins
scoreboard objectives setdisplay sidebar optIn

scoreboard players set run gm03-general 0
scoreboard players set gamemode-running settings 0

gamerule fallDamage true
