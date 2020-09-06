playsound minecraft:entity.firework_rocket.twinkle master @a[scores={optIn=1}] 0 100 2000 1000000 1 1

function kitpvp:utility/internal/delete-entities

execute as @a[tag=spectator] run function kitpvp:gamemodes/_common/stop_player
execute as @a[scores={optIn=1}] run function kitpvp:gamemodes/_common/stop_player
execute as @a[tag=livePlayer] run function kitpvp:gamemodes/_common/stop_player

function kitpvp:maps/map-unload

scoreboard objectives setdisplay list wins
scoreboard objectives setdisplay sidebar optIn

bossbar set 0 players

scoreboard players set run gm_general 0
scoreboard players set gamemodeRunning settings 0

gamerule fallDamage true
time set 18000
scoreboard players set @a respawn 0
