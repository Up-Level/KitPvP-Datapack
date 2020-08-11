execute if entity @s as @e[type=boat] run scoreboard players operation @s compareUUID0 = @s ProjectileUUID0
execute if entity @s as @e[type=boat] run scoreboard players operation @s compareUUID1 = @s ProjectileUUID1
execute if entity @s as @e[type=boat] run scoreboard players operation @s compareUUID2 = @s ProjectileUUID2
execute if entity @s as @e[type=boat] run scoreboard players operation @s compareUUID3 = @s ProjectileUUID3

execute if entity @s run scoreboard players operation @e[type=boat] compareUUID0 -= @s UUID0
execute if entity @s run scoreboard players operation @e[type=boat] compareUUID1 -= @s UUID1
execute if entity @s run scoreboard players operation @e[type=boat] compareUUID2 -= @s UUID2
execute if entity @s run scoreboard players operation @e[type=boat] compareUUID3 -= @s UUID3

execute if entity @s as @e[scores={compareUUID0=0,compareUUID1=0,compareUUID2=0,compareUUID3=0}] run kill @s
