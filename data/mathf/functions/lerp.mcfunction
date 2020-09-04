
#> Lerp (Linearly Interpolate)
#  Input:
#  Start = inp0 mIO
#  End = inp1 mIO
#  Interpolant (Clamped from 0-100) = inp2 mIO
#  
#  Output:
#  Value = out0 mIO

scoreboard players operation start mData = inp0 mIO
scoreboard players operation end mData = inp1 mIO

scoreboard players operation range mData = end mData
scoreboard players operation range mData -= start mData

scoreboard players operation interpolant mData = inp2 mIO
scoreboard players operation interpolant mData *= range mData
scoreboard players operation interpolant mData /= #100 const
scoreboard players operation interpolant mData += start mData

scoreboard players operation out0 mIO = interpolant mData
