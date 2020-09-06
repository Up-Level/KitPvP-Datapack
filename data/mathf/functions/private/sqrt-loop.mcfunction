scoreboard players add sqrtCount mData 1
scoreboard players operation temp mData = inp0 mIO
scoreboard players operation temp mData /= out0 mIO
scoreboard players operation temp mData += out0 mIO
scoreboard players operation temp mData /= #2 const
scoreboard players operation out0 mIO = temp mData

execute store success score sqrtFinished mData if score prevSqrtValue mData = temp mData
execute if score sqrtCount mData matches 25.. run scoreboard players set sqrtFinished mData 1
scoreboard players operation prevSqrtValue mData = temp mData

execute if score sqrtFinished mData matches 0 run function mathf:private/sqrt-loop
