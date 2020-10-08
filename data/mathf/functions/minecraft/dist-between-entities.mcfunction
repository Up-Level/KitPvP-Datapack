
#> Distance between 2 entities
#  More performant over longer distances as is rounded to int
#  
#  First entity should have the tag mathf.entity0
#  Second entity should have the tag mathf.entity1
#  Output will be in o0 mathf.io
#  
#  Note that the mathf.entity0 and mathf.entity1 tags will be removed from the entities afterwards.

# Get the positions of both entites
execute store result score i0 mathf.io as @e[tag=mathf.entity0,limit=1] run data get entity @s Pos[0]
execute store result score i1 mathf.io as @e[tag=mathf.entity0,limit=1] run data get entity @s Pos[1]
execute store result score i2 mathf.io as @e[tag=mathf.entity0,limit=1] run data get entity @s Pos[2]

execute store result score i3 mathf.io as @e[tag=mathf.entity1,limit=1] run data get entity @s Pos[0]
execute store result score i4 mathf.io as @e[tag=mathf.entity1,limit=1] run data get entity @s Pos[1]
execute store result score i5 mathf.io as @e[tag=mathf.entity1,limit=1] run data get entity @s Pos[2]

# Input their coords into this function
function mathf:dist-between-points

# Remove entity tags after use
tag @e[tag=mathf.entity0] remove mathf.entity0
tag @e[tag=mathf.entity1] remove mathf.entity1
