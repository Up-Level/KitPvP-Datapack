
#> Vector between 2 entities' eyes
#  First entity should have the tag entity0
#  Second entity should have the tag entity1
#  Output will be in out0 mIO (Scale 100)
#  
#  Note that the entity0 and entity1 tags will be removed from the entities afterwards.

# Get the positions of both entites
execute store result score inp0 mIO as @e[tag=entity0,limit=1] anchored eyes run data get entity @s Pos[0] 100
execute store result score inp1 mIO as @e[tag=entity0,limit=1] anchored eyes run data get entity @s Pos[1] 100
execute store result score inp2 mIO as @e[tag=entity0,limit=1] anchored eyes run data get entity @s Pos[2] 100

execute store result score inp3 mIO as @e[tag=entity1,limit=1] anchored eyes run data get entity @s Pos[0] 100
execute store result score inp4 mIO as @e[tag=entity1,limit=1] anchored eyes run data get entity @s Pos[1] 100
execute store result score inp5 mIO as @e[tag=entity1,limit=1] anchored eyes run data get entity @s Pos[2] 100

# Input their coords into this function
function mathf:vector/get-vector-between-points

# Remove entity tags after use
tag @e[tag=entity0] remove entity0
tag @e[tag=entity1] remove entity1
