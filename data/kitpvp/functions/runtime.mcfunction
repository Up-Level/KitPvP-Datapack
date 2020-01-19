# General runtime commands
execute as @a run execute unless entity @s[nbt={Inventory:[{id:"minecraft:golden_carrot"}]},gamemode=adventure] run replaceitem entity @s hotbar.8 minecraft:golden_carrot
kill @e[type=arrow,nbt={inGround:1b}]
kill @e[type=item]

# Runtime during gamemode
execute if score gamemode-running settings matches 1 run function kitpvp:runtime-gamemode

# Runtime not during gamemode
execute if score gamemode-running settings matches 0 run function kitpvp:runtime-spawn

# On death, do these commands
execute as @a[scores={dead=1}] run function kitpvp:on-death
