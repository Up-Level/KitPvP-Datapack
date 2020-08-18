# Run Class Runtime
execute as @a[scores={optIn=1,respawn=0},gamemode=!spectator] run function kitpvp:class-runtime

# Remove 1 kill if fell out of map
execute as @a[scores={playerY=..0}] if score gamemode settings matches 3 run scoreboard players remove @s gm_kills 1
execute as @a[scores={playerY=..0}] if score gamemode settings matches 4 run scoreboard players remove @s gm_kills 1
execute as @a[scores={playerY=..0}] if score gamemode settings matches 6 run scoreboard players remove @s gm_kills 1
execute as @a[scores={playerY=..0}] if score gamemode settings matches 6 run scoreboard players set @s killBin -1
execute as @a[scores={playerY=..0}] run kill @s

# Run Class Triggers
execute as @a unless score @s classTriggers matches 0 if score @s respawn matches 1 run function kitpvp:configure/class-triggers

execute if entity @a[scores={respawn=1}] run function kitpvp:respawn

#region Run map specific commands
execute if score map settings matches 1 run function kitpvp:maps/01-four-corners
execute if score map settings matches 2 run function kitpvp:maps/02-sheerdrop
execute if score map settings matches 3 run function kitpvp:maps/03-cargo
execute if score map settings matches 4 run function kitpvp:maps/04-arena
execute if score map settings matches 5 run function kitpvp:maps/05-survival-beginnings
execute if score map settings matches 5 run function kitpvp:maps/06-temple
#endregion

#region Run gamemode runtimes
execute if score run gm_general matches 1 run function kitpvp:gamemodes/001-lives-s/001-runtime
execute if score run gm_general matches 3 run function kitpvp:gamemodes/002-deathmatch-s/002-runtime
execute if score run gm_general matches 2 run function kitpvp:gamemodes/101-lives-t/101-runtime
execute if score run gm_general matches 4 run function kitpvp:gamemodes/102-deathmatch-t/102-runtime
execute if score run gm_general matches 5 run function kitpvp:gamemodes/201-juggernaut/201-runtime
execute if score run gm_general matches 6 run function kitpvp:gamemodes/202-gungame/202-runtime
execute if score run gm_general matches 7 run function kitpvp:gamemodes/203-elimination/203-runtime
#endregion

# Reset KillBin
scoreboard players set @a[scores={killBin=1..}] killBin 0
