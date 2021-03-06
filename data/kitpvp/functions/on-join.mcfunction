function kitpvp:utility/internal/get-uuid
function kitpvp:utility/internal/reset-player-scoreboards

execute at @e[name="spawn",limit=1] run spawnpoint @s ~ ~ ~

# Destroy battle loggers
tag @s[scores={optIn=1},tag=livePlayer] add inGame
scoreboard players reset @s[tag=inGame] optIn
execute as @s[tag=inGame] run function kitpvp:gamemodes/_common/stop_player
execute if entity @s[tag=inGame] run tellraw @a [{"selector":"@s","color":"light_purple","bold": true}, " left during a game, laugh at them!"]
execute at @s[tag=inGame] run playsound minecraft:hostile.oryx_death master @a ~ ~ ~ 10000000000000 1

execute if entity @s[tag=spectator] run function kitpvp:gamemodes/_common/stop_player
execute if entity @s[tag=spectator] run tag @s remove spectator

scoreboard players reset @s optIn
scoreboard players set @s class 0
tag @s remove inGame

team join none @s

tag @s add joined
