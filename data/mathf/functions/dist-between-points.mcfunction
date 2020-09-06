
#> Distance between 2 points
#  Input is as follows:
#  Point 1 x = inp0 mIO
#  Point 1 y = inp1 mIO
#  Point 1 z = inp2 mIO
#  Point 2 x = inp3 mIO
#  Point 2 y = inp4 mIO
#  Point 2 z = inp5 mIO
#  
#  Output is as follows:
#  Distance = out0 mIO
#  
#  Credit to https://gaming.stackexchange.com/a/348985

# Get differences on each axis
scoreboard players operation xDiff mData = inp0 mIO
scoreboard players operation xDiff mData -= inp3 mIO

scoreboard players operation yDiff mData = inp1 mIO
scoreboard players operation yDiff mData -= inp4 mIO

scoreboard players operation zDiff mData = inp2 mIO
scoreboard players operation zDiff mData -= inp5 mIO

# Square all differences
scoreboard players operation xDiff mData *= xDiff mData
scoreboard players operation yDiff mData *= yDiff mData
scoreboard players operation zDiff mData *= zDiff mData

# Add distances together
scoreboard players operation distSquared mData = xDiff mData
scoreboard players operation distSquared mData += yDiff mData
scoreboard players operation distSquared mData += zDiff mData

# Sqrt the distSquared to get the overall distance
scoreboard players operation inp0 mIO = distSquared mData
function mathf:sqrt

summon chest_minecart ~ ~ ~ {CustomDisplayTile:1b,Items:[{Slot:0,Count:1,id:"command_block"}]}
