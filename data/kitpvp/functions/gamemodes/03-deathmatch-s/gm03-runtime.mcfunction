# Lives Gamemode Runtime
scoreboard players remove ticks gm03-general 1
scoreboard players operation Time-Seconds gm03-time = ticks gm03-general
scoreboard players operation Time-Seconds gm03-time /= twenty gm03-general

execute as @a run scoreboard players operation @s gm03-kills-copy = @s gm03-kills
scoreboard players set highest gm03-kills-copy 0
scoreboard players operation highest gm03-kills-copy > @a gm03-kills-copy
scoreboard players operation @a gm03-kills-copy -= highest gm03-kills-copy

execute if score ticks gm03-general matches 0 run function kitpvp:gamemodes/03-deathmatch-s/gm03-stop
