
#> Square Root
#  Number to sqrt should be in inp0 mIO
#  Result will be in out0 mIO
#  Credit to https://github.com/ImCoolYeah105/Datapack-Utilities/issues/5#issuecomment-433670044

scoreboard players set sqrtCount mData 0
scoreboard players operation out0 mIO = inp0 mIO
scoreboard players operation out0 mIO /= #2 const

function mathf:private/sqrt-loop
