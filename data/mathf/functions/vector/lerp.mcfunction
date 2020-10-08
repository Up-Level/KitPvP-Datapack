
#> Lerp (Linearly Interpolate)
#  Input is as follows:
#  Interpolant (Scale 100) = i0 mathf.io
#  Input Vector x (Scale 100) = i1 mathf.io
#  Input Vector y (Scale 100) = i2 mathf.io
#  Input Vector z (Scale 100) = i3 mathf.io
#  
#  Output is as follows:
#  Vector x (Scale 100) = o0 mathf.io
#  Vector y (Scale 100) = o1 mathf.io
#  Vector z (Scale 100) = o2 mathf.io

scoreboard players operation vectorInterpolant mathf.data = i0 mathf.io

scoreboard players operation endX mathf.data = i1 mathf.io
scoreboard players operation endY mathf.data = i2 mathf.io
scoreboard players operation endZ mathf.data = i3 mathf.io

scoreboard players operation i2 mathf.io = vectorInterpolant mathf.data


scoreboard players set i0 mathf.io 0
scoreboard players operation i1 mathf.io = endX mathf.data
function mathf:lerp
scoreboard players operation xLerp mathf.data = o0 mathf.io

scoreboard players set i0 mathf.io 0
scoreboard players operation i1 mathf.io = endY mathf.data
function mathf:lerp
scoreboard players operation yLerp mathf.data = o0 mathf.io

scoreboard players set i0 mathf.io 0
scoreboard players operation i1 mathf.io = endZ mathf.data
function mathf:lerp
scoreboard players operation zLerp mathf.data = o0 mathf.io


scoreboard players operation o0 mathf.io = xLerp mathf.data
scoreboard players operation o1 mathf.io = yLerp mathf.data
scoreboard players operation o2 mathf.io = zLerp mathf.data

execute if score debugInfo mathf.config matches 1 run tellraw @a ["Vector: (",{"score":{"name":"o0","objective":"mathf.io"}},", ", {"score":{"name":"o1","objective":"mathf.io"}},", ", {"score":{"name":"o2","objective":"mathf.io"}},")"]
