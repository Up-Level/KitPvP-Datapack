
#> Degrees to Radians
#  Input = (Scale 100) inp0 mIO
#  Output (Scale 1000) = out0 mIO

scoreboard players operation temp mData = inp0 mIO

scoreboard players operation temp mData *= #pi const_S100
scoreboard players operation temp mData /= #1800 const

scoreboard players operation out0 mIO = temp mData
