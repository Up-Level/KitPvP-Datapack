execute as @a[team=uninfected] store result score @s playerAliveX run data get entity @s Pos[0] 100
execute as @a[team=uninfected] store result score @s playerAliveY run data get entity @s Pos[1] 100
execute as @a[team=uninfected] store result score @s playerAliveZ run data get entity @s Pos[2] 100

# Infected Gamemode Runtime
scoreboard players remove ticks gm_general 1
scoreboard players operation seconds gm_general = ticks gm_general
execute if score ticks gm_general >= zero number run scoreboard players operation seconds gm_general /= twenty number

bossbar set 0 name [{"text":"Time Remaining: ","color":"gold"},{"score":{"objective":"gm_general","name":"seconds"},"color":"gold"},{"text":" seconds","color":"gold"}]
execute store result bossbar minecraft:0 value run scoreboard players get seconds gm_general

execute store result score Players-Remaining gm_sidebar if entity @a[team=uninfected]
execute store result score Players-Infected gm_sidebar if entity @a[team=infected]

# Select Infected Leader after 10 seconds
execute if score ticks gm_general matches 5800 as @r[tag=livePlayer] run function kitpvp:gamemodes/205-infected/205-set-infected
execute if score ticks gm_general matches 5800 as @a[team=infected] run scoreboard players set @s class 102

execute as @a[team=uninfected,scores={respawn=1}] run function kitpvp:gamemodes/205-infected/205-set-infected

#region End game
execute store result score players gm_general if entity @a[tag=livePlayer]
execute store result score playersUninfected gm_general if entity @a[tag=livePlayer,team=uninfected]
execute store result score playersInfected gm_general if entity @a[tag=livePlayer,team=infected]

execute if score players gm_general = playersInfected gm_general if score playersUninfected gm_general matches 0 run scoreboard players set winner gm_general 1
execute if score ticks gm_general matches 0 run scoreboard players set winner gm_general 2

execute unless score winner gm_general matches 0 run function kitpvp:gamemodes/205-infected/205-stop
#endregion
