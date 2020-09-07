# Class 13 - Survivalist

execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword"}]}] run replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1b}
replaceitem entity @s armor.chest iron_chestplate{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

execute if entity @s[scores={killsSinceDeath=0}] run attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0 multiply_base

execute if entity @s[scores={killsSinceDeath=1..}] run attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0.2 multiply_base
execute if entity @s[scores={killsSinceDeath=2..}] run effect give @s resistance 1 0 true
execute if entity @s[scores={killsSinceDeath=3..}] run effect give @s jump_boost 1 1 true
execute if entity @s[scores={killsSinceDeath=4..}] run effect give @s strength 1 0 true
execute if entity @s[scores={killsSinceDeath=5..}] run effect give @s resistance 1 1 true

execute at @s if entity @s[scores={killsSinceDeath=1..2}] run particle minecraft:flame ~ ~1 ~ 1.5 1.5 1.5 0.2 1 force
execute at @s if entity @s[scores={killsSinceDeath=3..4}] run particle minecraft:flame ~ ~1 ~ 1.5 1.5 1.5 0.2 2 force
execute at @s if entity @s[scores={killsSinceDeath=5..}] run particle minecraft:flame ~ ~1 ~ 1.5 1.5 1.5 0.2 3 force

execute if entity @s[scores={killBin=1..}] run effect give @s regeneration 3 3 true
