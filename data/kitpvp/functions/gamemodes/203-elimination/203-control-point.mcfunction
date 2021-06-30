execute store result score onPoint gm_general at @e[name="active-point"] if entity @a[distance=..3,scores={gm_lives=1..}]
execute store result score redOnPoint gm_general at @e[name="active-point"] if entity @a[distance=..3,scores={gm_lives=1..},team=red]
execute store result score blueOnPoint gm_general at @e[name="active-point"] if entity @a[distance=..3,scores={gm_lives=1..},team=blue]
execute store result score greenOnPoint gm_general at @e[name="active-point"] if entity @a[distance=..3,scores={gm_lives=1..},team=green]
execute store result score yellowOnPoint gm_general at @e[name="active-point"] if entity @a[distance=..3,scores={gm_lives=1..},team=yellow]

scoreboard players set teamCapturing gm_general 0

execute unless score onPoint gm_general matches 0 if score onPoint gm_general = redOnPoint gm_general run scoreboard players set teamCapturing gm_general 1
execute unless score onPoint gm_general matches 0 if score onPoint gm_general = blueOnPoint gm_general run scoreboard players set teamCapturing gm_general 2
execute unless score onPoint gm_general matches 0 if score onPoint gm_general = greenOnPoint gm_general run scoreboard players set teamCapturing gm_general 3
execute unless score onPoint gm_general matches 0 if score onPoint gm_general = yellowOnPoint gm_general run scoreboard players set teamCapturing gm_general 4

execute unless score onPoint gm_general = redOnPoint gm_general unless score onPoint gm_general = blueOnPoint gm_general unless score onPoint gm_general = greenOnPoint gm_general unless score onPoint gm_general = yellowOnPoint gm_general run scoreboard players set teamCapturing gm_general 0

execute if score teamCapturing gm_general matches 0 run scoreboard players set captureTime gm_general 0
execute if score teamCapturing gm_general > zero number run scoreboard players add captureTime gm_general 1

execute store result bossbar minecraft:0 value run scoreboard players get captureTime gm_general

execute if score teamCapturing gm_general matches 0 run bossbar set 0 color white
execute if score teamCapturing gm_general matches 1 run bossbar set 0 color red
execute if score teamCapturing gm_general matches 2 run bossbar set 0 color blue
execute if score teamCapturing gm_general matches 3 run bossbar set 0 color green
execute if score teamCapturing gm_general matches 4 run bossbar set 0 color yellow

execute if score teamCapturing gm_general matches 0 run item replace entity @e[name="point-corner"] armor.head with white_stained_glass
execute if score teamCapturing gm_general matches 1 if score captureTime gm_general matches 1 run item replace entity @e[name="point-corner"] armor.head with red_stained_glass
execute if score teamCapturing gm_general matches 2 if score captureTime gm_general matches 1 run item replace entity @e[name="point-corner"] armor.head with blue_stained_glass
execute if score teamCapturing gm_general matches 3 if score captureTime gm_general matches 1 run item replace entity @e[name="point-corner"] armor.head with lime_stained_glass
execute if score teamCapturing gm_general matches 4 if score captureTime gm_general matches 1 run item replace entity @e[name="point-corner"] armor.head with yellow_stained_glass

execute if score captureTime gm_general matches 1 at @e[name="active-point"] run playsound minecraft:block.note_block.bit master @a[scores={optIn=1}] ~ ~ ~ 1000000 1 1
execute if score captureTime gm_general matches 20 at @e[name="active-point"] run playsound minecraft:block.note_block.bit master @a[scores={optIn=1}] ~ ~ ~ 1000000 1 1
execute if score captureTime gm_general matches 40 at @e[name="active-point"] run playsound minecraft:block.note_block.bit master @a[scores={optIn=1}] ~ ~ ~ 1000000 1 1
execute if score captureTime gm_general matches 60 at @e[name="active-point"] run playsound minecraft:block.note_block.bit master @a[scores={optIn=1}] ~ ~ ~ 1000000 1 1
execute if score captureTime gm_general matches 80 at @e[name="active-point"] run playsound minecraft:block.note_block.bit master @a[scores={optIn=1}] ~ ~ ~ 1000000 1 1

execute if score captureTime gm_general = timeToCapture gm_general run function kitpvp:gamemodes/203-elimination/203-end-capture
