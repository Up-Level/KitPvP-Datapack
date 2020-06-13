# Deathmatch Gamemode Stop
title @a[scores={optIn=1}] title [{"selector":"@a[scores={gm03-kills-copy=0}]"}, " has Won!"]
scoreboard players add @a[scores={gm03-kills-copy=0}] wins 1

playsound minecraft:entity.firework_rocket.twinkle master @a[scores={optIn=1}]
playsound minecraft:ui.toast.challenge_complete master @a[scores={gm03-kills-copy=0}] ~ ~ ~ 1.25

scoreboard players set run gm03-general 0
function kitpvp:gamemodes/generic-stop
