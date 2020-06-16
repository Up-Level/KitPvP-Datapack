playsound minecraft:entity.firework_rocket.twinkle master @a[scores={optIn=1}] 0 65 1000 1000000 1 1

execute as @a[scores={optIn=1}] run function kitpvp:gamemodes/_common/stop_player

scoreboard objectives setdisplay list wins
scoreboard objectives setdisplay sidebar optIn

bossbar set 0 players

scoreboard players set run gm_general 0
scoreboard players set gamemode-running settings 0

function kitpvp:utility/delete-entities

gamerule fallDamage true

tag @a[tag=livePlayer] remove livePlayer
