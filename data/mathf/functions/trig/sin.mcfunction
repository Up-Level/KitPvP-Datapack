
#> Sine
#  Input (degrees at Scale 100) = inp0 mIO
#  Output (number from 0-1 at Scale 1000) = out0 mIO

scoreboard players operation inp0 mIO %= #36000 const
execute if score inp0 mIO matches 9001..18000 run function mathf:trig/private/inp-90-180
execute if score inp0 mIO matches 18001..27000 run function mathf:trig/private/inp-180-270
execute if score inp0 mIO matches 27001..36000 run function mathf:trig/private/inp-270-360


function mathf:deg-to-rad
scoreboard players operation temp mData = out0 mIo


scoreboard players operation sinPower mData = temp mData
scoreboard players set powerCount mData 1
function mathf:trig/private/sin-loop


scoreboard players operation t1 mData = angPow3 mData
scoreboard players operation t1 mData /= #6 const

scoreboard players operation t2 mData = angPow5 mData
scoreboard players operation t2 mData /= #120 const

scoreboard players operation t3 mData = angPow7 mData
scoreboard players operation t3 mData /= #5040 const

scoreboard players operation t4 mData = angPow9 mData
scoreboard players operation t4 mData /= #362880 const


scoreboard players operation temp mData -= t1 mData
scoreboard players operation temp mData += t2 mData
scoreboard players operation temp mData -= t3 mData
scoreboard players operation temp mData += t4 mData

scoreboard players operation out0 mIO = temp mData
