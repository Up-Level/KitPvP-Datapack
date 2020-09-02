# Lives Gamemode Stop
execute if score players gm_general matches 1 run title @a[scores={optIn=1}] title [{"selector":"@a[tag=livePlayer,scores={gm_lives=1..}]"}, " has Won!"]
execute if score players gm_general matches 0 run title @a[scores={optIn=1}] title ["The game was a Draw!"]

scoreboard players add @a[tag=livePlayer] wins 1

function kitpvp:gamemodes/_common/stop
