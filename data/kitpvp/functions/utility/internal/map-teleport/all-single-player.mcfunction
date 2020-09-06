execute as @e[tag=SpawnPoint] at @s run function kitpvp:utility/internal/map-teleport/get-spawnpoint-distance

execute as @a[tag=group] run function kitpvp:utility/internal/map-teleport/all-single-player-single

# Recursive(spam until we get a good spawn)
# execute if score tele-succ temp matches 0 run function kitpvp:utility/internal/map-teleport/single-player
tag @a remove group
