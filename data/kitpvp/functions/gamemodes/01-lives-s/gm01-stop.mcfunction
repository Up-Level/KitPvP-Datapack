# Lives Gamemode Stop
title @a[scores={optIn=1}] title [{"selector":"@a[scores={gm_lives=1..}]"}, " has Won!"]
scoreboard players add @a[scores={gm_lives=1..}] wins 1
playsound minecraft:ui.toast.challenge_complete master @a[scores={gm_lives=1..}] 0 65 1000 1 1 1

function kitpvp:gamemodes/_common/stop
