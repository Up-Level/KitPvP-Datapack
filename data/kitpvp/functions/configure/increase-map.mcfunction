execute unless score map settings matches 4 run scoreboard players add map settings 1

execute if score map settings matches 0 run tellraw @a[distance=..50] {"text":"No Map selected.", "color":"gold"}
execute if score map settings matches 1 run tellraw @a[distance=..50] {"text":"Map 1 - Four Corners selected. (Large)", "color":"gold"}
execute if score map settings matches 2 run tellraw @a[distance=..50] {"text":"Map 2 - Sheerdrop selected. (Small)", "color":"gold"}
execute if score map settings matches 3 run tellraw @a[distance=..50] {"text":"Map 3 - Cargo selected. (Medium)", "color":"gold"}
execute if score map settings matches 4 run tellraw @a[distance=..50] {"text":"Map 4 - Arena selected. (Small)", "color":"gold"}
