
#> Lerp (Linearly Interpolate)
#  Input is as follows:
#  Interpolant (Scale 100) = inp0 mIO
#  Initial point x (Scale 100) = inp1 mIO
#  Initial point y (Scale 100) = inp2 mIO
#  Initial point z (Scale 100) = inp3 mIO
#  Terminal point x (Scale 100) = inp4 mIO
#  Terminal point y (Scale 100) = inp5 mIO
#  Terminal point z (Scale 100) = inp6 mIO
#  
#  Output is as follows:
#  Vector x (Scale 100) = out0 mIO
#  Vector y (Scale 100) = out1 mIO
#  Vector z (Scale 100) = out2 mIO

scoreboard players operation vectorInterpolant mData = inp0 mIO

scoreboard players operation startX mData = inp1 mIO
scoreboard players operation endX mData = inp4 mIO

scoreboard players operation startY mData = inp2 mIO
scoreboard players operation endY mData = inp5 mIO

scoreboard players operation startZ mData = inp3 mIO
scoreboard players operation endZ mData = inp6 mIO

scoreboard players operation inp2 mIO = vectorInterpolant mData


scoreboard players operation inp0 mIO = startX mData
scoreboard players operation inp1 mIO = endX mData
function mathf:lerp
scoreboard players operation xLerp mData = out0 mIO

scoreboard players operation inp0 mIO = startY mData
scoreboard players operation inp1 mIO = endY mData
function mathf:lerp
scoreboard players operation yLerp mData = out0 mIO

scoreboard players operation inp0 mIO = startZ mData
scoreboard players operation inp1 mIO = endZ mData
function mathf:lerp
scoreboard players operation zLerp mData = out0 mIO


scoreboard players operation out0 mIO = xLerp mData
scoreboard players operation out1 mIO = yLerp mData
scoreboard players operation out2 mIO = zLerp mData
