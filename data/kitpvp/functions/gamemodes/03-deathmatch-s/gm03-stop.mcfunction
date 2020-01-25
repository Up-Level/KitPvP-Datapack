# Lives Gamemode Stop
execute as @a[scores={optIn=1}] if score @s gm03-kills-copy matches 0 run scoreboard players add playersWon gm03-general 1

execute if score playersWon gm03-general matches 1 run title @a[scores={optIn=1}] title [{"selector":"@a[scores={gm03-kills-copy=0}]"}, " has Won!"]
execute if score playersWon gm03-general > one gm03-general run title @a[scores={optIn=1}] title [{"selector":"@a[scores={gm03-kills-copy=0}]"}, " have Drawn!"]

execute unless score playersWon gm03-general = ready settings run scoreboard players add @a[scores={gm03-kills-copy=0}] wins 1

playsound minecraft:entity.firework_rocket.twinkle master @a[scores={optIn=1}]
playsound minecraft:ui.toast.challenge_complete master @a[scores={gm03-kills-copy=0}] ~ ~ ~ 1.25

scoreboard players set * survivalistLevel 0

tp @a[scores={optIn=1}] @e[name="spawn",limit=1]
gamemode adventure @a[scores={optIn=1}]
clear @a[scores={optIn=1}]

scoreboard objectives setdisplay list wins
scoreboard objectives setdisplay sidebar optIn

scoreboard players set run gm03-general 0
scoreboard players set gamemode-running settings 0

gamerule fallDamage true
