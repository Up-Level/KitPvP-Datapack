execute as @e[name="spawn"] run effect give @a[distance=..50] minecraft:resistance 5 255 true
execute as @e[name="spawn"] run effect give @a[distance=..50] minecraft:weakness 5 255 true

execute if score gamemode settings matches 1 run team join none @a

execute if score gamemode settings matches 1 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/01-lives-s/gm01-setup
execute if score gamemode settings matches 2 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/02-lives-t/gm02-setup
