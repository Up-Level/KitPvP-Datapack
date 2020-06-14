# Run Class Runtime
execute as @a[scores={optIn=1,respawn=0},gamemode=!spectator] run function kitpvp:class-runtime

# Remove 1 kill if fell out of map
execute as @a[scores={playerY=..0}] if score gamemode settings matches 3 run scoreboard players remove @s gm03-kills 1
execute as @a[scores={playerY=..0}] run kill @s

# Run Class Triggers
execute as @a unless score @s classTriggers matches 0 if score @s respawn matches 1 run function kitpvp:configure/class-triggers

execute if entity @a[scores={respawn=1}] run function kitpvp:respawn

execute if score map settings matches 1 run function kitpvp:maps/01-four-corners
execute if score map settings matches 2 run function kitpvp:maps/02-sheerdrop
execute if score map settings matches 3 run function kitpvp:maps/03-cargo
execute if score map settings matches 4 run function kitpvp:maps/04-arena
execute if score map settings matches 5 run function kitpvp:maps/05-survival-beginnings

execute if score run gm01-general matches 1 run function kitpvp:gamemodes/01-lives-s/gm01-runtime
execute if score run gm02-general matches 1 run function kitpvp:gamemodes/02-lives-t/gm02-runtime
execute if score run gm03-general matches 1 run function kitpvp:gamemodes/03-deathmatch-s/gm03-runtime
execute if score run gm04-general matches 1 run function kitpvp:gamemodes/04-deathmatch-t/gm04-runtime
execute if score run gm05-general matches 1 run function kitpvp:gamemodes/05-juggernaut/gm05-runtime

# Reset KillBin
scoreboard players set @a[scores={killBin=1..}] killBin 0
