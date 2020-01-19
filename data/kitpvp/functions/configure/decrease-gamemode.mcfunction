scoreboard players remove gamemode settings 1

execute if score gamemode settings matches 0 run tellraw @a[distance=..50] {"text":"No Gamemode selected.", "color":"gold"}
execute if score gamemode settings matches 1 run tellraw @a[distance=..50] {"text":"Gamemode 1 - Solo Lives selected.", "color":"gold"}
execute if score gamemode settings matches 2 run tellraw @a[distance=..50] {"text":"Gamemode 2 - Team Lives selected.", "color":"gold"}
