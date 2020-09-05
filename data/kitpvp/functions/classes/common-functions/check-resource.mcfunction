scoreboard players operation costTemp temp = @s resource
scoreboard players operation costTemp temp -= cost temp
execute if score costTemp temp matches 0.. run scoreboard players set costAllowed temp 1
execute if score costTemp temp matches ..-1 run scoreboard players set costAllowed temp 0
