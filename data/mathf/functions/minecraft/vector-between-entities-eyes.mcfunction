
#> Vector between 2 entities' eyes
#  First entity should have the tag mathf.entity0
#  Second entity should have the tag mathf.entity1
#  Output will be in o0 mathf.io (Scale 100)
#
#  Note that the mathf.entity0 and mathf.entity1 tags will be removed from the entities afterwards.

execute as @e[tag=mathf.entity0,limit=1] at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mathf.dummy","mathf.aec0"]}
execute as @e[tag=mathf.entity1,limit=1] at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mathf.dummy","mathf.aec1"]}

# Get the positions of both entities
execute store result score i0 mathf.io as @e[tag=mathf.aec0,limit=1] run data get entity @s Pos[0] 100
execute store result score i1 mathf.io as @e[tag=mathf.aec0,limit=1] run data get entity @s Pos[1] 100
execute store result score i2 mathf.io as @e[tag=mathf.aec0,limit=1] run data get entity @s Pos[2] 100

execute store result score i3 mathf.io as @e[tag=mathf.aec1,limit=1] run data get entity @s Pos[0] 100
execute store result score i4 mathf.io as @e[tag=mathf.aec1,limit=1] run data get entity @s Pos[1] 100
execute store result score i5 mathf.io as @e[tag=mathf.aec1,limit=1] run data get entity @s Pos[2] 100

# Input their coords into this function
function mathf:vector/get-vector-between-points

# Kill AECs after use
kill @e[type=area_effect_cloud,tag=mathf.dummy]

# Remove entity tags after use
tag @e[tag=mathf.entity0] remove mathf.entity0
tag @e[tag=mathf.entity1] remove mathf.entity1
