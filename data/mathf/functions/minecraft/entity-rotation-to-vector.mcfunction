
#> Entity Rotation to Vector
#  Tag the entity with entity0 and run the function.
#  
#  Output is as follows:
#  Vector x (Scale 100) = out0 mIO
#  Vector y (Scale 100) = out1 mIO
#  Vector z (Scale 100) = out2 mIO

execute store result score inp0 mIO run data get entity @e[tag=entity0,limit=1] Rotation[0] 100
execute store result score inp1 mIO run data get entity @e[tag=entity0,limit=1] Rotation[1] 100

tag @e[tag=entity0] remove entity0

function mathf:rotation/rotation-to-vector
