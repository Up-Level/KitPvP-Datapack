
#> Power
#  x = y^z
#  y = inp0 mIO
#  z = inp1 mIO
#  x = out0 mIO

scoreboard players set powerCount mData 1
scoreboard players operation temp mData = inp0 mIO

function mathf:private/power-loop
#function mathf:private/clean-scoreboards
