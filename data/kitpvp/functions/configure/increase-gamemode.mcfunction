execute unless score gamemode settings matches 5 run scoreboard players add gamemode settings 1

execute if score gamemode settings matches 1 run tellraw @a[distance=..50] {"text":"Gamemode 1 - Solo Lives selected.", "color":"gold"}
execute if score gamemode settings matches 2 run tellraw @a[distance=..50] {"text":"Gamemode 2 - Team Lives selected.", "color":"gold"}
execute if score gamemode settings matches 3 run tellraw @a[distance=..50] {"text":"Gamemode 3 - Deathmatch selected.", "color":"gold"}
execute if score gamemode settings matches 4 run tellraw @a[distance=..50] {"text":"Gamemode 4 - Team Deathmatch selected.", "color":"gold"}
execute if score gamemode settings matches 5 run tellraw @a[distance=..50] {"text":"Gamemode 5 - Juggernaut selected.", "color":"gold"}
