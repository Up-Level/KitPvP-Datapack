# Gungame Gamemode Stop
title @a[scores={optIn=1}] title [{"selector":"@a[scores={class=21}]"}, " has Won!"]
scoreboard players add @a[scores={class=21}] wins 1

playsound minecraft:ui.toast.challenge_complete master @a[scores={class=21}] 0 65 1000 1 1 1

function kitpvp:gamemodes/_common/stop
