execute as @e[name="spawn"] run effect give @a[distance=..50,gamemode=adventure] minecraft:resistance 2 255 true
execute as @e[name="spawn"] run effect give @a[distance=..50,gamemode=adventure] minecraft:weakness 2 255 true
execute as @e[name="spawn"] run effect give @a[distance=..50,gamemode=adventure] minecraft:regeneration 2 255 true
execute as @e[name="spawn"] run effect give @a[distance=..50,gamemode=adventure] minecraft:saturation 2 255 true

# Run Menu Triggers
execute as @a unless score @s menuTriggers matches 0 run function kitpvp:configure/menu-triggers

# Run Class Triggers
execute as @a unless score @s classTriggers matches 0 run function kitpvp:configure/class-triggers

scoreboard players set @a gm01-lives 3
scoreboard players set @a gm02-lives 3

execute if score gamemode settings matches 1 run team join none @a

execute if score gamemode-bin settings matches 1 run scoreboard players set @a[scores={class=0}] class 6
execute if score gamemode settings matches 1 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/01-lives-s/gm01-setup
execute if score gamemode settings matches 2 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/02-lives-t/gm02-setup
execute if score gamemode settings matches 3 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/03-deathmatch-s/gm03-setup
