# General runtime commands
execute as @a run execute unless entity @s[nbt={Inventory:[{id:"minecraft:golden_carrot"}]}] run replaceitem entity @s[gamemode=adventure] hotbar.8 minecraft:golden_carrot
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=spectral_arrow,nbt={inGround:1b}]
kill @e[type=item]

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

# Reset crouchBin
scoreboard players set @a crouchBin 0
