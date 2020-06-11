# Team Deathmatch Gamemode Runtime
scoreboard players remove ticks gm04-general 1
scoreboard players operation Time-Seconds gm04-time = ticks gm04-general
scoreboard players operation Time-Seconds gm04-time /= twenty number

execute as @a[team=red] run scoreboard players operation killsRed gm04-teamKills += @s killBin
execute as @a[team=blue] run scoreboard players operation killsBlue gm04-teamKills += @s killBin
execute as @a[team=green] run scoreboard players operation killsGreen gm04-teamKills += @s killBin
execute as @a[team=yellow] run scoreboard players operation killsYellow gm04-teamKills += @s killBin

execute as @a run scoreboard players operation killsRed gm04-kills-copy = killsRed gm04-teamKills
execute as @a run scoreboard players operation killsBlue gm04-kills-copy = killsBlue gm04-teamKills
execute as @a run scoreboard players operation killsGreen gm04-kills-copy = killsGreen gm04-teamKills
execute as @a run scoreboard players operation killsYellow gm04-kills-copy = killsYellow gm04-teamKills

scoreboard players set highest gm04-kills-copy 0
scoreboard players operation highest gm04-kills-copy > killsRed gm04-kills-copy
scoreboard players operation highest gm04-kills-copy > killsBlue gm04-kills-copy
scoreboard players operation highest gm04-kills-copy > killsGreen gm04-kills-copy
scoreboard players operation highest gm04-kills-copy > killsYellow gm04-kills-copy

scoreboard players operation killsRed gm04-kills-copy -= highest gm04-kills-copy
scoreboard players operation killsBlue gm04-kills-copy -= highest gm04-kills-copy
scoreboard players operation killsGreen gm04-kills-copy -= highest gm04-kills-copy
scoreboard players operation killsYellow gm04-kills-copy -= highest gm04-kills-copy

execute if score ticks gm04-general <= zero number if score killsRed gm04-kills-copy matches 0 if score killsBlue gm04-kills-copy < zero number if score killsGreen gm04-kills-copy < zero number if score killsYellow gm04-kills-copy < zero number run function kitpvp:gamemodes/04-deathmatch-t/gm04-stop
execute if score ticks gm04-general <= zero number if score killsBlue gm04-kills-copy matches 0 if score killsRed gm04-kills-copy < zero number if score killsGreen gm04-kills-copy < zero number if score killsYellow gm04-kills-copy < zero number run function kitpvp:gamemodes/04-deathmatch-t/gm04-stop
execute if score ticks gm04-general <= zero number if score killsGreen gm04-kills-copy matches 0 if score killsBlue gm04-kills-copy < zero number if score killsRed gm04-kills-copy < zero number if score killsYellow gm04-kills-copy < zero number run function kitpvp:gamemodes/04-deathmatch-t/gm04-stop
execute if score ticks gm04-general <= zero number if score killsYellow gm04-kills-copy matches 0 if score killsBlue gm04-kills-copy < zero number if score killsGreen gm04-kills-copy < zero number if score killsRed gm04-kills-copy < zero number run function kitpvp:gamemodes/04-deathmatch-t/gm04-stop

execute if score ticks gm04-general <= zero number run title @a[scores={optIn=1}] actionbar {"text":"Overtime!","color":"gold"}
