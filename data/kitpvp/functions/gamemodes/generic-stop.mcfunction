playsound minecraft:entity.firework_rocket.twinkle master @a[scores={optIn=1}]

scoreboard players set * killsSinceDeath 0
gamemode adventure @a[scores={optIn=1}]
clear @a[scores={optIn=1}]

team join none @a[scores={optIn=1}]

tp @a[scores={optIn=1}] @e[name="spawn",limit=1]

scoreboard objectives setdisplay list wins
scoreboard objectives setdisplay sidebar optIn

scoreboard players set gamemode-running settings 0

gamerule fallDamage true
