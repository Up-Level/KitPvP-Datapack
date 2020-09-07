scoreboard players add sqrtCount mData 1
scoreboard players operation sqrtValue mData = inp0 mIO
scoreboard players operation sqrtValue mData /= out0 mIO
scoreboard players operation sqrtValue mData += out0 mIO
scoreboard players operation sqrtValue mData /= #2 const
scoreboard players operation out0 mIO = sqrtValue mData

# Detect if the function can stop looping
execute store success score sqrtFinished mData if score sqrtValue.n-1 mData = sqrtValue mData
execute store success score sqrtFinished mData if score sqrtValue.n-2 mData = sqrtValue mData
execute if score sqrtCount mData matches 35.. run scoreboard players set sqrtFinished mData 1

# Set sqrt temporary previous values
scoreboard players operation sqrtValue.n-2 mData = sqrtValue.n-1 mData
scoreboard players operation sqrtValue.n-1 mData = sqrtValue mData

# Loop the function if not accurate enough
execute if score sqrtFinished mData matches 0 run function mathf:private/sqrt-loop
