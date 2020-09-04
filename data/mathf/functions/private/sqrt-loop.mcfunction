scoreboard players add sqrtCount mData 1
scoreboard players operation temp mData = inp0 mIO
scoreboard players operation temp mData /= out0 mIO
scoreboard players operation temp mData += out0 mIO
scoreboard players operation temp mData /= #2 const
scoreboard players operation out0 mIO = temp mData

execute store success score sqrtFinished mData if score prevSqrtValue mData = temp mData
scoreboard players operation prevSqrtValue mData = temp mData

execute if score debugInfo mConfig matches 1 if score sqrtFinished mData matches 1 run tellraw @a ["Sqrt function iterations: ",{"score": {"name": "sqrtCount","objective": "mData"}}]
execute if score sqrtFinished mData matches 0 run function mathf:private/sqrt-loop
