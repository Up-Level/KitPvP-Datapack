# General runtime commands
execute as @a run execute unless entity @s[nbt={Inventory:[{id:"minecraft:golden_carrot"}]}] run replaceitem entity @s[gamemode=adventure] hotbar.8 minecraft:golden_carrot
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=spectral_arrow,nbt={inGround:1b}]
kill @e[type=item]

# Detect if player is in a liquid or a waterlogged block
execute as @a at @s if block ~ ~ ~ #kitpvp:waterloggable[waterlogged=true] run scoreboard players set @s inLiquid 1
execute as @a at @s if block ~ ~ ~ #kitpvp:liquidblocks run scoreboard players set @s inLiquid 1

# Kill arrows that have lived for 300 ticks, Multiply crossbow speed and set no gravity
function kitpvp:projectiles

# Keep player Y on scoreboard
execute as @a store result score @s playerY run data get entity @s Pos[1] 100

# Runtime during gamemode
execute if score gamemode-running settings matches 1 run function kitpvp:runtime-gamemode

# Runtime not during gamemode
execute if score gamemode-running settings matches 0 run function kitpvp:runtime-spawn

# Put all players with no team into the "none" team
execute as @a[team=] run team join none @s

# On death, do these commands
execute as @a[scores={dead=1}] run function kitpvp:on-death

# Give a Player if they have a giveClass value
execute as @a[scores={giveClass=1}] run function kitpvp:class-runtime

# Reset CrouchTime if not crouching
execute as @a[scores={crouchBin=0}] run scoreboard players set @s crouchTime 0

execute as @a unless entity @s[scores={giveClass=1}] run scoreboard players set @s giveClass 0

# Check if play has joined and run on-join
tag @a[scores={joinBin=1..}] remove join
execute as @a[tag=!join] run function kitpvp:on-join

# Reset Binary Scoreboards
scoreboard players set @a joinBin 0
scoreboard players set @a crouchBin 0
scoreboard players set @a inLiquid 0
scoreboard players set @a carrotStickBin 0
scoreboard players set @a fungusStickBin 0
