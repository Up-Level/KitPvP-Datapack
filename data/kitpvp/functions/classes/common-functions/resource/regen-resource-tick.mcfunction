
scoreboard players remove @s resourceTime 1
execute if score @s resourceTime matches ..0 run scoreboard players add @s resource 1
execute if score @s resourceTime matches ..0 run scoreboard players set @s resourceTime 20

execute if score @s resource matches 20.. run scoreboard players set @s resourceTime 20
