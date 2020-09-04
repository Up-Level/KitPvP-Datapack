scoreboard players add sqrtCount mData 1
scoreboard players operation temp mData = inp0 mIO
scoreboard players operation temp mData /= out0 mIO
scoreboard players operation temp mData += out0 mIO
scoreboard players operation temp mData /= #2 const
scoreboard players operation out0 mIO = temp mData
execute if score sqrtCount mData matches ..10 run function mathf:private/sqrt-loop
