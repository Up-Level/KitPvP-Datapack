
#> Lerp (Linearly Interpolate)
#  Input is as follows:
#  Interpolant (Scale 100) = inp0 mIO
#  Input Vector x (Scale 100) = inp1 mIO
#  Input Vector y (Scale 100) = inp2 mIO
#  Input Vector z (Scale 100) = inp3 mIO
#  
#  Output is as follows:
#  Vector x (Scale 100) = out0 mIO
#  Vector y (Scale 100) = out1 mIO
#  Vector z (Scale 100) = out2 mIO

scoreboard players operation vectorInterpolant mData = inp0 mIO

scoreboard players operation endX mData = inp1 mIO
scoreboard players operation endY mData = inp2 mIO
scoreboard players operation endZ mData = inp3 mIO

scoreboard players operation inp2 mIO = vectorInterpolant mData


scoreboard players set inp0 mIO 0
scoreboard players operation inp1 mIO = endX mData
function mathf:lerp
scoreboard players operation xLerp mData = out0 mIO

scoreboard players set inp0 mIO 0
scoreboard players operation inp1 mIO = endY mData
function mathf:lerp
scoreboard players operation yLerp mData = out0 mIO

scoreboard players set inp0 mIO 0
scoreboard players operation inp1 mIO = endZ mData
function mathf:lerp
scoreboard players operation zLerp mData = out0 mIO


scoreboard players operation out0 mIO = xLerp mData
scoreboard players operation out1 mIO = yLerp mData
scoreboard players operation out2 mIO = zLerp mData

execute if score debugInfo mConfig matches 1 run tellraw @a ["Vector: (",{"score":{"name":"out0","objective":"mIO"}},", ", {"score":{"name":"out1","objective":"mIO"}},", ", {"score":{"name":"out2","objective":"mIO"}},")"]
