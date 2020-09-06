
#> Vector between 2 entities' eyes
#  First entity should have the tag entity0
#  Second entity should have the tag entity1
#  Output will be in out0 mIO (Scale 100)
#
#  Note that the entity0 and entity1 tags will be removed from the entities afterwards.

execute as @e[tag=entity0,limit=1] at @s anchored eyes run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["dummy","aec0"]}
execute as @e[tag=entity1,limit=1] at @s anchored eyes run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["dummy","aec1"]}

# Get the positions of both entities
execute store result score inp0 mIO as @e[tag=aec0,limit=1] run data get entity @s Pos[0] 100
execute store result score inp1 mIO as @e[tag=aec0,limit=1] run data get entity @s Pos[1] 100
execute store result score inp2 mIO as @e[tag=aec0,limit=1] run data get entity @s Pos[2] 100

execute store result score inp3 mIO as @e[tag=aec1,limit=1] run data get entity @s Pos[0] 100
execute store result score inp4 mIO as @e[tag=aec1,limit=1] run data get entity @s Pos[1] 100
execute store result score inp5 mIO as @e[tag=aec1,limit=1] run data get entity @s Pos[2] 100

# Input their coords into this function
function mathf:vector/get-vector-between-points

# Kill AECs after use
kill @e[type=area_effect_cloud,tag=dummy]

# Remove entity tags after use
tag @e[tag=entity0] remove entity0
tag @e[tag=entity1] remove entity1
