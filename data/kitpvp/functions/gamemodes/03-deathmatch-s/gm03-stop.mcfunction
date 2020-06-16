# Deathmatch Gamemode Stop
title @a[scores={optIn=1}] title [{"selector":"@a[tag=livePlayer,scores={gm_kills-copy=0}]"}, " has Won!"]
scoreboard players add @a[tag=livePlayer,scores={gm_kills-copy=0}] wins 1

playsound minecraft:ui.toast.challenge_complete master @a[scores={gm_kills-copy=0}] 0 65 1000 1 1 1

function kitpvp:gamemodes/_common/stop
