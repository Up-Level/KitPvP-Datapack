execute as @e[tag=SpawnPoint] at @s run function kitpvp:utility/internal/map-teleport/get-spawnpoint-distance

execute store success score tele-succ temp run tp @a[tag=group] @e[tag=GoodSpawn,limit=1,sort=random]

# Force(if we dont find a spawn just use any old one)
execute if score tele-succ temp matches 0 run tp @a[tag=group] @e[tag=SpawnPoint,limit=1,sort=random]

# Recursive(spam until we get a good spawn)
# execute if score tele-succ temp matches 0 run function kitpvp:utility/internal/map-teleport/single-player

tag @a remove group
