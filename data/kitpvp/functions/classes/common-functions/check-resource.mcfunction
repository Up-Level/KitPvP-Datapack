scoreboard players operation tempAmount temp = @s classResource
scoreboard players operation tempAmount temp -= amount temp
execute if score tempAmount temp matches 0.. run scoreboard players set costAllowed temp 1
execute if score tempAmount temp matches ..-1 run scoreboard players set costAllowed temp 0
