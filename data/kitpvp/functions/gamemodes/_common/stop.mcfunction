playsound minecraft:entity.firework_rocket.twinkle master @a[scores={optIn=1}] 0 65 1000 100000000

scoreboard players set * killsSinceDeath 0
gamemode adventure @a[scores={optIn=1}]
clear @a[scores={optIn=1}]

tp @a[scores={optIn=1}] @e[name="spawn",limit=1]

scoreboard objectives setdisplay list wins
scoreboard objectives setdisplay sidebar optIn

bossbar set 0 players

scoreboard players set run gm_general 0
scoreboard players set gamemode-running settings 0

gamerule fallDamage true
