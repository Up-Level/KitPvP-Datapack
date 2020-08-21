execute unless score map settings matches 9 run scoreboard players add map settings 1

execute if score map settings matches 0 run tellraw @a {"text":"No Map selected.", "color":"gold"}
execute if score map settings matches 1 run tellraw @a {"text":"Map 1 - Four Corners selected. (Large)", "color":"gold"}
execute if score map settings matches 2 run tellraw @a {"text":"Map 2 - Sheerdrop selected. (Small)", "color":"gold"}
execute if score map settings matches 3 run tellraw @a {"text":"Map 3 - Cargo selected. (Medium)", "color":"gold"}
execute if score map settings matches 4 run tellraw @a {"text":"Map 4 - Arena selected. (Tiny)", "color":"gold"}
execute if score map settings matches 5 run tellraw @a {"text":"Map 5 - Survival Beginnings selected. (Large)", "color":"gold"}
execute if score map settings matches 6 run tellraw @a {"text":"Map 6 - Temple selected. Size (Medium)", "color":"gold"}
execute if score map settings matches 7 run tellraw @a {"text":"Map 7 - Enchanted Forest selected. Size (Massive)", "color":"gold"}
execute if score map settings matches 8 run tellraw @a {"text":"Map 8 - Gulag selected. (Small)", "color":"gold"}
execute if score map settings matches 9 run tellraw @a {"text":"Map 9 - Water Treatment selected. (Medium)", "color":"gold"}
