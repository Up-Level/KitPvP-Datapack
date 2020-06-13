# Lives Gamemode Stop
title @a[scores={optIn=1}] title [{"selector":"@a[scores={gm01-lives=1..}]"}, " has Won!"]
scoreboard players add @a[scores={gm01-lives=1..}] wins 1

playsound minecraft:ui.toast.challenge_complete master @a[scores={gm01-lives=1..}] ~ ~ ~ 1.25

scoreboard players set @a gm01-lives 3

scoreboard players set run gm01-general 0
function kitpvp:gamemodes/generic-stop
