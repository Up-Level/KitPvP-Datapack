
#> Tangent
#  Input (degrees at Scale 100) = inp0 mIO
#  Output (number at Scale 1000) = out0 mIO

function mathf:trig/sin
scoreboard players operation sine mData = out0 mIO

scoreboard players operation sineSquared mData = sine mData
scoreboard players operation sineSquared mData *= sine mData
scoreboard players operation sineSquared mData /= #100 const

scoreboard players set denominator mData 10000
scoreboard players operation denominator mData -= sineSquared mData
scoreboard players operation inp0 mIO = denominator mData
function mathf:sqrt
scoreboard players operation denominator mData = out0 mIO
scoreboard players operation denominator mData *= #10 const

scoreboard players operation out0 mIO = sine mData
scoreboard players operation out0 mIO *= #1000 const
scoreboard players operation out0 mIO /= denominator mData
