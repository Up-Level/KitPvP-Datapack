function kitpvp:utility/get-uuid
function kitpvp:utility/reset-player-scoreboards

# Destroy battle loggers
tag @s[scores={optIn=1}] add inGame
scoreboard players reset @s[tag=inGame] optIn
kill @s[tag=inGame]
execute if entity @s[tag=inGame] run tellraw @a [{"selector":"@s","color":"light_purple","bold":"true"}, " left during a game, laugh at them!"]
execute at @s run playsound minecraft:hostile.oryx_death master @a ~ ~ ~ 10000000000000 1
tag @s remove inGame

tag @s add joined
