function kitpvp:utility/get-uuid
function kitpvp:utility/reset-player-scoreboards

team join none @s

execute at @e[name="spawn",limit=1] run spawnpoint @s ~ ~ ~

# Destroy battle loggers
tag @s[scores={optIn=1},tag=livePlayer] add inGame
scoreboard players reset @s[tag=inGame] optIn
execute as @s[tag=inGame] run function kitpvp:gamemodes/_common/stop_player
execute if entity @s[tag=inGame] run tellraw @a [{"selector":"@s","color":"light_purple","bold":"true"}, " left during a game, laugh at them!"]
execute at @s[tag=inGame] run playsound minecraft:hostile.oryx_death master @a ~ ~ ~ 10000000000000 1
tag @s remove inGame

tag @s add joined
