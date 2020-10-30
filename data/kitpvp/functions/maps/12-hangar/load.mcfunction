function kitpvp:maps/12-hangar/forceload

scoreboard players set spawnDistance settings 8

time set 6000

execute positioned 21010 64 21 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 20978 64 10 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 20966 64 -19 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 20956 64 -3 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 20958 70 23 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 20957 70 -4 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 20958 75 -13 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 20951 75 19 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 21021 70 -19 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 20999 64 -19 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 21003 70 21 run function kitpvp:utility/internal/map-teleport/create-spawn
