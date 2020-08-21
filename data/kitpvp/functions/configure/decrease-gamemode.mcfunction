execute unless score gamemode settings matches 0 run scoreboard players remove gamemode settings 1

execute if score gamemode settings matches 0 run tellraw @a {"text":"No Gamemode selected.", "color":"gold"}
execute if score gamemode settings matches 1 run tellraw @a {"text":"Gamemode 1 - Solo Lives selected.", "color":"gold"}
execute if score gamemode settings matches 2 run tellraw @a {"text":"Gamemode 2 - Team Lives selected.", "color":"gold"}
execute if score gamemode settings matches 3 run tellraw @a {"text":"Gamemode 3 - Deathmatch selected.", "color":"gold"}
execute if score gamemode settings matches 4 run tellraw @a {"text":"Gamemode 4 - Team Deathmatch selected.", "color":"gold"}
execute if score gamemode settings matches 5 run tellraw @a {"text":"Gamemode 5 - Juggernaut selected.", "color":"gold"}
execute if score gamemode settings matches 6 run tellraw @a {"text":"Gamemode 6 - Gungame selected.", "color":"gold"}
execute if score gamemode settings matches 7 run tellraw @a {"text":"Gamemode 7 - Elimination selected.", "color":"gold"}
execute if score gamemode settings matches 8 run tellraw @a {"text":"Gamemode 7 - VIP selected.", "color":"gold"}
