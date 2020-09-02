
#> Radians to Degrees
#  Input (Scale 1000) = inp0 mIO
#  Output (Scale 100) = out0 mIO

scoreboard players operation temp mData = inp0 mIO

scoreboard players operation temp mData *= #1800 const
scoreboard players operation temp mData /= #pi const_S100

scoreboard players operation out0 mIO = temp mData
