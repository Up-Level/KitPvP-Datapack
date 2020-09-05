
#> Normalise Vector
#  Input is as follows:
#  Vector x (Scale 100) = inp0 mIO
#  Vector y (Scale 100) = inp1 mIO
#  Vector z (Scale 100) = inp2 mIO
#  
#  Output is as follows:
#  Normalised Vector x (Scale 100) = out0 mIO
#  Normalised Vector y (Scale 100) = out1 mIO
#  Normalised Vector z (Scale 100) = out2 mIO

scoreboard players operation vecX mData = inp0 mIO
scoreboard players operation vecY mData = inp1 mIO
scoreboard players operation vecZ mData = inp2 mIO

function mathf:vector/magnitude
scoreboard players operation magnitude mData = out0 mIO

scoreboard players operation out0 mIO = vecX mData
scoreboard players operation out0 mIO *= #100 const
scoreboard players operation out0 mIO /= magnitude mData

scoreboard players operation out1 mIO = vecY mData
scoreboard players operation out1 mIO *= #100 const
scoreboard players operation out1 mIO /= magnitude mData

scoreboard players operation out2 mIO = vecZ mData
scoreboard players operation out2 mIO *= #100 const
scoreboard players operation out2 mIO /= magnitude mData

execute if score debugInfo mConfig matches 1 run tellraw @a ["Vector: (",{"score":{"name":"out0","objective":"mIO"}},", ", {"score":{"name":"out1","objective":"mIO"}},", ", {"score":{"name":"out2","objective":"mIO"}},")"]
