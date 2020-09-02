scoreboard players add powerCount mData 1
scoreboard players operation temp mData *= inp0 mIO
execute if score powerCount mData < inp1 mIO run function mathf:private/power-loop
execute if score powerCount mData = inp1 mIO run scoreboard players operation out0 mIO = temp mData
