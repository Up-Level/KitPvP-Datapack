playsound minecraft:entity.firework_rocket.twinkle master @a[scores={optIn=1}] 0 100 2000 1000000 1 1

execute as @a[scores={optIn=1}] run function kitpvp:gamemodes/_common/stop_player

scoreboard objectives setdisplay list wins
scoreboard objectives setdisplay sidebar optIn

bossbar set 0 players

scoreboard players set run gm_general 0
scoreboard players set gamemode-running settings 0

function kitpvp:utility/internal/delete-entites

gamerule fallDamage true
time set 18000
scoreboard players set @a respawn 0
