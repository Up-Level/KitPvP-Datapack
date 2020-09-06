# General runtime commands
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:golden_carrot"}]}] run replaceitem entity @s[gamemode=adventure] hotbar.8 minecraft:golden_carrot
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=spectral_arrow,nbt={inGround:1b}]
execute as @e[type=!player,tag=Override] at @s run function kitpvp:utility/internal/motion-override
execute as @e[type=minecraft:shulker_bullet,nbt={Steps:1}] at @s unless entity @p[distance=..50] run kill @s
kill @e[type=item,tag=!dontDelete]

# Give the teleport book to admins
execute as @a run function kitpvp:utility/internal/give-teleport-book

# Detect if player is in a liquid or a waterlogged block
execute as @a at @s if block ~ ~ ~ #kitpvp:waterloggable[waterlogged=true] run scoreboard players set @s inLiquid 1
execute as @a at @s if block ~ ~ ~ #kitpvp:liquidblocks run scoreboard players set @s inLiquid 1

# Kill arrows that have lived for 300 ticks, Multiply crossbow speed and set no gravity
function kitpvp:projectiles
function kitpvp:blocks

# Store player position on scoreboard
execute as @a store result score @s playerX run data get entity @s Pos[0] 100
execute as @a store result score @s playerY run data get entity @s Pos[1] 100
execute as @a store result score @s playerZ run data get entity @s Pos[2] 100

# Runtime during gamemode
execute if score gamemodeRunning settings matches 1 run function kitpvp:runtime-gamemode

# Reset KillBin
scoreboard players set @a[scores={killBin=1..}] killBin 0
scoreboard players set @a[scores={killBin=..-1}] killBin 0

# Runtime during spawn
function kitpvp:runtime-spawn

# Players with a giveClass score will get their class regardless of a gamemode running
execute as @a[scores={giveClass=1}] run function kitpvp:class-runtime

# On death, do these commands
execute as @a[scores={dead=1}] run function kitpvp:on-death

# Reset CrouchTime if not crouching
execute as @a[scores={crouchBin=0}] run scoreboard players set @s crouchTime 0

execute as @a unless entity @s[scores={giveClass=1}] run scoreboard players set @s giveClass 0

# Check if player has joined and run on-join
tag @a[scores={joinBin=1..}] remove joined
execute as @a[tag=!joined] run function kitpvp:on-join

#region Reset Binary Scoreboards
scoreboard players set @a joinBin 0
scoreboard players set @a crouchBin 0
scoreboard players set @a inLiquid 0
scoreboard players set @a carrotStickBin 0
scoreboard players set @a fungusStickBin 0
scoreboard players set @a damageDealtBin 0
scoreboard players set @a damageTakenBin 0
scoreboard players set @a dropRedDyeBin 0
scoreboard players set @a usedBowBin 0
scoreboard players set @a usedCrossbowBin 0
scoreboard players set @a usedTridentBin 0
#endregion
