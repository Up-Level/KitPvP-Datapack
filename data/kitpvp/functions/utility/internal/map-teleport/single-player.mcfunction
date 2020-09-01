function kitpvp:utility/internal/map-teleport/get-spawnpoint-distance

execute store success score tele-succ temp run tp TetTheNotGreedy @e[tag=GoodSpawn,limit=1,sort=random]
execute if score tele-succ temp matches 0 run function kitpvp:utility/internal/map-teleport/single-player
