# VIP Gamemode Runtime

#region Display team kills
execute as @a[scores={optIn=1},team=red] run scoreboard players operation Red-Kills gm_sidebar += @s killBin
execute as @a[scores={optIn=1},team=blue] run scoreboard players operation Blue-Kills gm_sidebar += @s killBin
execute as @a[scores={optIn=1},team=green] run scoreboard players operation Green-Kills gm_sidebar += @s killBin
execute as @a[scores={optIn=1},team=yellow] run scoreboard players operation Yellow-Kills gm_sidebar += @s killBin

execute as @a[scores={optIn=1}] run scoreboard players operation killsRed gm_kills-copy = Red-Kills gm_sidebar
execute as @a[scores={optIn=1}] run scoreboard players operation killsBlue gm_kills-copy = Blue-Kills gm_sidebar
execute as @a[scores={optIn=1}] run scoreboard players operation killsGreen gm_kills-copy = Green-Kills gm_sidebar
execute as @a[scores={optIn=1}] run scoreboard players operation killsYellow gm_kills-copy = Yellow-Kills gm_sidebar

scoreboard players set highest gm_kills-copy 0
scoreboard players operation highest gm_kills-copy > killsRed gm_kills-copy
scoreboard players operation highest gm_kills-copy > killsBlue gm_kills-copy
scoreboard players operation highest gm_kills-copy > killsGreen gm_kills-copy
scoreboard players operation highest gm_kills-copy > killsYellow gm_kills-copy

scoreboard players operation killsRed gm_kills-copy -= highest gm_kills-copy
scoreboard players operation killsBlue gm_kills-copy -= highest gm_kills-copy
scoreboard players operation killsGreen gm_kills-copy -= highest gm_kills-copy
scoreboard players operation killsYellow gm_kills-copy -= highest gm_kills-copy
#endregion

# Lose Condition
execute if entity @a[team=red,tag=vip,scores={dead=1}] run scoreboard players set redEliminated gm_general 1
execute if entity @a[team=red,tag=vip,scores={dead=1}] run scoreboard players set blueEliminated gm_general 1
execute if entity @a[team=red,tag=vip,scores={dead=1}] run scoreboard players set greenEliminated gm_general 1
execute if entity @a[team=red,tag=vip,scores={dead=1}] run scoreboard players set yellowEliminated gm_general 1

# Display Eliminated text
execute if entity @a[team=red,tag=vip,scores={dead=1}] run tellraw @a[scores={optIn=1}] {"text":"Red Team has been Eliminated!","color":"red","bold":true}
execute if entity @a[team=red,tag=vip,scores={dead=1}] run tellraw @a[scores={optIn=1}] {"text":"Blue Team has been Eliminated!","color":"blue","bold":true}
execute if entity @a[team=red,tag=vip,scores={dead=1}] run tellraw @a[scores={optIn=1}] {"text":"Green Team has been Eliminated!","color":"green","bold":true}
execute if entity @a[team=red,tag=vip,scores={dead=1}] run tellraw @a[scores={optIn=1}] {"text":"Yellow Team has been Eliminated!","color":"yellow","bold":true}

# Remove livePlayer tag from eliminated teams
execute if entity @a[team=red,tag=vip,scores={dead=1}] run tag @a[team=red,tag=livePlayer] remove livePlayer
execute if entity @a[team=red,tag=vip,scores={dead=1}] run tag @a[team=blue,tag=livePlayer] remove livePlayer
execute if entity @a[team=red,tag=vip,scores={dead=1}] run tag @a[team=green,tag=livePlayer] remove livePlayer
execute if entity @a[team=red,tag=vip,scores={dead=1}] run tag @a[team=yellow,tag=livePlayer] remove livePlayer

# Set Eliminated players to spectator
execute if score redEliminated gm_general matches 1 run gamemode spectator @a[team=red,scores={optIn=1}]
execute if score blueEliminated gm_general matches 1 run gamemode spectator @a[team=blue,scores={optIn=1}]
execute if score greenEliminated gm_general matches 1 run gamemode spectator @a[team=green,scores={optIn=1}]
execute if score yellowEliminated gm_general matches 1 run gamemode spectator @a[team=yellow,scores={optIn=1}]

# Find who won
execute if score redEliminated gm_general matches 0 if score blueEliminated gm_general matches 1 if score greenEliminated gm_general matches 1 if score yellowEliminated gm_general matches 1 run scoreboard players set winner gm_general 1
execute if score blueEliminated gm_general matches 0 if score redEliminated gm_general matches 1 if score greenEliminated gm_general matches 1 if score yellowEliminated gm_general matches 1 run scoreboard players set winner gm_general 2
execute if score greenEliminated gm_general matches 0 if score blueEliminated gm_general matches 1 if score redEliminated gm_general matches 1 if score yellowEliminated gm_general matches 1 run scoreboard players set winner gm_general 3
execute if score yellowEliminated gm_general matches 0 if score blueEliminated gm_general matches 1 if score greenEliminated gm_general matches 1 if score redEliminated gm_general matches 1 run scoreboard players set winner gm_general 4

execute if score winner gm_general > zero number run function kitpvp:gamemodes/204-vip/204-stop
