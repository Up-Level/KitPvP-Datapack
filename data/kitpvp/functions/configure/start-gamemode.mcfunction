execute store result score ready settings if entity @a[scores={optIn=1}]
execute if score ready settings matches ..1 run tellraw @s {"text":"Gamemodes need at least 2 players to start.","color":"red"}
execute if score ready settings matches 2.. if score gamemode settings matches 1.. run scoreboard players set gamemode-bin settings 1
