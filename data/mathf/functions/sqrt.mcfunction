
#> Square Root
#  Number to sqrt should be in inp0 mIO
#  Result will be in out0 mIO
#  Credit to https://github.com/ImCoolYeah105/Datapack-Utilities/issues/5#issuecomment-433670044

execute if score debugInfo mConfig matches 1 run tellraw @a ["Attempting Sqrt of ",{"score":{"name":"inp0","objective":"mIO"}}]

# If negative number is input, just sqrt the positive version of that number
execute if score inp0 mIO matches ..0 run scoreboard players operation inp0 mIO *= #-1 const

scoreboard players set sqrtCount mData 0
scoreboard players set prevSqrtValue mData 0
scoreboard players operation out0 mIO = inp0 mIO
scoreboard players operation out0 mIO /= #2 const

function mathf:private/sqrt-loop

execute if score debugInfo mConfig matches 1 run tellraw @a ["Sqrt of ",{"score":{"name":"inp0","objective":"mIO"}}," = ",{"score":{"name":"out0","objective":"mIO"}}," after ",{"score":{"name":"sqrtCount","objective":"mData"}}," iterations."]
