# Run Class Runtime
execute as @a[scores={optIn=1,respawn=0}] run trigger classTriggers add 0
execute as @a[scores={optIn=1,respawn=0},gamemode=!spectator] run function kitpvp:class-runtime

# Remove 1 kill if suicided
execute as @a[scores={dropRedDyeBin=1}] run function kitpvp:on-env-death
execute as @a[scores={dropRedDyeBin=1}] run kill @s

# Run map specific commands
function kitpvp:maps/map-tick

#region Run gamemode runtimes
execute if score run gm_general matches 1 run function kitpvp:gamemodes/001-lives-s/001-runtime
execute if score run gm_general matches 3 run function kitpvp:gamemodes/002-deathmatch-s/002-runtime
execute if score run gm_general matches 2 run function kitpvp:gamemodes/101-lives-t/101-runtime
execute if score run gm_general matches 4 run function kitpvp:gamemodes/102-deathmatch-t/102-runtime
execute if score run gm_general matches 5 run function kitpvp:gamemodes/201-juggernaut/201-runtime
execute if score run gm_general matches 6 run function kitpvp:gamemodes/202-gungame/202-runtime
execute if score run gm_general matches 7 run function kitpvp:gamemodes/203-elimination/203-runtime
execute if score run gm_general matches 8 run function kitpvp:gamemodes/204-vip/204-runtime
execute if score run gm_general matches 9 run function kitpvp:gamemodes/205-infected/205-runtime
#endregion

# Increase timeAlive
scoreboard players add @a[tag=livePlayer,scores={respawn=0}] timeAlive 1

# Run Class Triggers
execute as @a if entity @s[scores={respawn=1}] run function kitpvp:configure/class-triggers

execute if entity @a[scores={respawn=1}] run function kitpvp:respawn

execute as @a[tag=livePlayer,scores={respawn=0}] if score @s damageDealtBin matches 0 run scoreboard players add @s sinceDealtDamage 1
execute as @a[tag=livePlayer] if score @s damageDealtBin > zero number run scoreboard players set @s sinceDealtDamage 0

# Dealt Damage custom scoreboard doesn't count arrow/trident hits
execute as @a[tag=livePlayer] if score @s usedBowBin matches 1 run scoreboard players set @s sinceDealtDamage 0
execute as @a[tag=livePlayer] if score @s usedCrossbowBin matches 1 run scoreboard players set @s sinceDealtDamage 0
execute as @a[tag=livePlayer] if score @s throwTrident matches 1 run scoreboard players set @s sinceDealtDamage 0

execute as @a[tag=livePlayer,scores={respawn=0}] if score @s damageTakenBin matches 0 run scoreboard players add @s sinceTakenDamage 1
execute as @a[tag=livePlayer] if score @s damageTakenBin > zero number run scoreboard players set @s sinceTakenDamage 0
