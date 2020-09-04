
#> Rotation to Vector
#  Input is as follows:
#  x Rotation (Scale 100) = inp0 mIO
#  y Rotation (Scale 100) = inp1 mIO
#  
#  Output is as follows:
#  Vector x (Scale 100) = out0 mIO
#  Vector y (Scale 100) = out1 mIO
#  Vector z (Scale 100) = out2 mIO

# Cheat by using minecraft's ^ coord system
summon armor_stand 0 16 2000 {Tags:["rotDummy","entity0"],Invulnerable:1b,Invisible:1b,Marker:1b}
execute store result entity @e[tag=entity0,limit=1] Rotation[0] float 0.01 run scoreboard players get inp0 mIO
execute store result entity @e[tag=entity0,limit=1] Rotation[1] float 0.01 run scoreboard players get inp1 mIO

execute as @e[tag=entity0,limit=1] at @s run summon armor_stand ^ ^ ^1 {Tags:["rotDummy","entity1"],Invulnerable:1b,Invisible:1b,Marker:1b}

function mathf:minecraft/vector-between-entities

kill @e[tag=rotDummy]

execute if score debugInfo mConfig matches 1 run tellraw @a ["Vector: (",{"score":{"name":"out0","objective":"mIO"}},", ", {"score":{"name":"out1","objective":"mIO"}},", ", {"score":{"name":"out2","objective":"mIO"}},")"]
