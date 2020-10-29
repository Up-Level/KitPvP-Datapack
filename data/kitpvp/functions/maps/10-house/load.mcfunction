function kitpvp:maps/10-house/forceload

scoreboard players set spawnDistance settings 5

time set 12500

scoreboard players set @a cdLift -1

execute positioned 18001 72 7 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 17978 72 12 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 18005 67 5 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 17982 65 14 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 17996 59 1 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 17977 58 11 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 17999 53 5 run function kitpvp:utility/internal/map-teleport/create-spawn
execute positioned 17976 52 14 run function kitpvp:utility/internal/map-teleport/create-spawn
