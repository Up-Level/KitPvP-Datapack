scoreboard players enable @a classTriggers

# Classes are scores 1-99
execute as @a if score @s classTriggers matches 1 run scoreboard players set @s class 1
execute as @a if score @s classTriggers matches 2 run scoreboard players set @s class 2
execute as @a if score @s classTriggers matches 3 run scoreboard players set @s class 3
execute as @a if score @s classTriggers matches 4 run scoreboard players set @s class 4
execute as @a if score @s classTriggers matches 5 run scoreboard players set @s class 5
execute as @a if score @s classTriggers matches 6 run scoreboard players set @s class 6
execute as @a if score @s classTriggers matches 7 run scoreboard players set @s class 7
execute as @a if score @s classTriggers matches 8 run scoreboard players set @s class 8
execute as @a if score @s classTriggers matches 9 run scoreboard players set @s class 9
execute as @a if score @s classTriggers matches 10 run scoreboard players set @s class 10
execute as @a if score @s classTriggers matches 11 run scoreboard players set @s class 11

execute as @a unless score @s classTriggers matches 0 run scoreboard players set @s classTriggers 0
