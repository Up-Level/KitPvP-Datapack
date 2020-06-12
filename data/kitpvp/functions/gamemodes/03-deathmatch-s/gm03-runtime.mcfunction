# Deathmatch Gamemode Runtime
scoreboard players remove ticks gm03-general 1
scoreboard players operation seconds gm03-general = ticks gm03-general
execute if score ticks gm03-general > zero number run scoreboard players operation seconds gm03-general /= twenty number
execute if score ticks gm03-general <= zero number run scoreboard players operation seconds gm03-general /= negative-twenty number
scoreboard players operation Time-Seconds gm03-time = seconds gm03-general

execute as @a[scores={optIn=1}] run scoreboard players operation @s gm03-kills-copy = @s gm03-kills
scoreboard players set highest gm03-kills-copy 0
scoreboard players operation highest gm03-kills-copy > @a[scores={optIn=1}] gm03-kills-copy
scoreboard players operation @a[scores={optIn=1}] gm03-kills-copy -= highest gm03-kills-copy

scoreboard players set playersInLead gm03-general 0
execute as @a[scores={optIn=1}] if score @s gm03-kills-copy matches 0 run scoreboard players add playersInLead gm03-general 1

execute if score ticks gm03-general <= zero number if score playersInLead gm03-general matches 1 run function kitpvp:gamemodes/03-deathmatch-s/gm03-stop

execute if score ticks gm03-general <= zero number run title @a[scores={optIn=1}] actionbar {"text":"Overtime!","color":"gold"}
