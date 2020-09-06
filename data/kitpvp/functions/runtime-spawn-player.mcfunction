effect give @s[gamemode=adventure] minecraft:resistance 2 255 true
effect give @s[gamemode=adventure] minecraft:weakness 2 255 true
effect give @s[gamemode=adventure] minecraft:regeneration 2 255 true
effect give @s[gamemode=adventure] minecraft:saturation 2 255 true

execute if entity @s[tag=!noSpawnBooks] run function kitpvp:utility/internal/give-spawn-books

# Run Menu Triggers
function kitpvp:configure/menu-triggers

# Run Class Triggers
function kitpvp:configure/class-triggers

# Kill player if they are below y0
kill @s[scores={playerY=..0}]

scoreboard players set @s[scores={class=0}] class 6

# Players can spectate by being near an armor stand
execute at @e[name=spectate-spot] run tellraw @s[tag=!spectator,distance=..2] {"text":"You are now a spectator.","color":"gold"}
execute at @e[name=spectate-spot] run tellraw @s[tag=spectator,distance=2..] {"text":"You will no longer spectate.","color":"gold"}

execute at @e[name=spectate-spot] run tag @s[tag=!spectator,distance=..2] add spectator
execute at @e[name=spectate-spot] run tag @s[tag=spectator,distance=2..] remove spectator

scoreboard players reset @a[tag=spectator] optIn
