scoreboard players add powerCount mData 1
scoreboard players operation sinPower mData *= temp mData
scoreboard players operation sinPower mData /= #1000 const

execute if score powerCount mData matches 3 run scoreboard players operation angPow3 mData = sinPower mData
execute if score powerCount mData matches 5 run scoreboard players operation angPow5 mData = sinPower mData
execute if score powerCount mData matches 7 run scoreboard players operation angPow7 mData = sinPower mData
execute if score powerCount mData matches 9 run scoreboard players operation angPow9 mData = sinPower mData

execute if score powerCount mData matches ..8 run function mathf:trig/private/sin-loop
