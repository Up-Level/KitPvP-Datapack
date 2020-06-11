# Team Deathmatch Gamemode Stop
execute if score killsRed gm04-kills-copy matches 0 run scoreboard players add winner gm04-general 1
execute if score killsBlue gm04-kills-copy matches 0 run scoreboard players add winner gm04-general 2
execute if score killsGreen gm04-kills-copy matches 0 run scoreboard players add winner gm04-general 3
execute if score killsYellow gm04-kills-copy matches 0 run scoreboard players add winner gm04-general 4

execute if score winner gm04-general matches 1 run scoreboard players add @a[team=red] wins 1
execute if score winner gm04-general matches 2 run scoreboard players add @a[team=blue] wins 1
execute if score winner gm04-general matches 3 run scoreboard players add @a[team=green] wins 1
execute if score winner gm04-general matches 4 run scoreboard players add @a[team=yellow] wins 1

execute if score winner gm04-general matches 1 run title @a[scores={optIn=1}] title {"text":"Red Team has Won!","color":"red"}
execute if score winner gm04-general matches 2 run title @a[scores={optIn=1}] title {"text":"Blue Team has Won!","color":"blue"}
execute if score winner gm04-general matches 3 run title @a[scores={optIn=1}] title {"text":"Green Team has Won!","color":"green"}
execute if score winner gm04-general matches 4 run title @a[scores={optIn=1}] title {"text":"Yellow Team has Won!","color":"yellow"}

playsound minecraft:entity.firework_rocket.twinkle master @a[scores={optIn=1}]

scoreboard players set * killsSinceDeath 0

tp @a[scores={optIn=1}] @e[name="spawn",limit=1]
gamemode adventure @a[scores={optIn=1}]
clear @a[scores={optIn=1}]

scoreboard objectives setdisplay list wins
scoreboard objectives setdisplay sidebar optIn

scoreboard players set run gm04-general 0
scoreboard players set gamemode-running settings 0

gamerule fallDamage true
