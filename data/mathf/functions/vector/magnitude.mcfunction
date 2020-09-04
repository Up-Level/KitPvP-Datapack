
#> Magnitude
#  Input is as follows:
#  Vector (Scale 100) x = inp0 mIO
#  Vector (Scale 100) y = inp1 mIO
#  Vector (Scale 100) z = inp2 mIO
#  
#  Output is as follows:
#  Magnitude (Scale 100) = out0 mIO
#  
#  Credit to https://gaming.stackexchange.com/a/348985

scoreboard players operation xDiff mData = inp0 mIO
scoreboard players operation yDiff mData = inp1 mIO
scoreboard players operation zDiff mData = inp2 mIO

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
