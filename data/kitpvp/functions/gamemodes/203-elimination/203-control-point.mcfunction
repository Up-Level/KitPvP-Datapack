execute store result score onPoint gm_general if entity @a[distance=..3,scores={gm_lives=1..}]
execute store result score redOnPoint gm_general if entity @a[distance=..3,scores={gm_lives=1..},team=red]
execute store result score blueOnPoint gm_general if entity @a[distance=..3,scores={gm_lives=1..},team=blue]
execute store result score greenOnPoint gm_general if entity @a[distance=..3,scores={gm_lives=1..},team=green]
execute store result score yellowOnPoint gm_general if entity @a[distance=..3,scores={gm_lives=1..},team=yellow]

execute if score onPoint gm_general = redOnPoint gm_general run scoreboard players set teamCapturing gm_general 1
execute if score onPoint gm_general = blueOnPoint gm_general run scoreboard players set teamCapturing gm_general 2
execute if score onPoint gm_general = greenOnPoint gm_general run scoreboard players set teamCapturing gm_general 3
execute if score onPoint gm_general = yellowOnPoint gm_general run scoreboard players set teamCapturing gm_general 4

execute unless score onPoint gm_general = redOnPoint gm_general unless score onPoint gm_general = blueOnPoint gm_general unless score onPoint gm_general = greenOnPoint gm_general unless score onPoint gm_general = yellowOnPoint gm_general run scoreboard players set teamCapturing gm_general 0

execute if score teamCapturing gm_general matches 0 run scoreboard players set captureTime gm_general 0
execute if score teamCapturing gm_general > zero number run scoreboard players add captureTime gm_general 1

execute if score captureTime gm_general = timeToCapture gm_general run function kitpvp:gamemodes/203-elimination/203-end-capture

say balls?
