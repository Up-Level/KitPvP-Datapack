# Class 11 - Brute

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:stone_sword"}]}] run replaceitem entity @s hotbar.0 minecraft:stone_sword{Unbreakable:1b}
replaceitem entity @s armor.chest iron_chestplate{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

execute as @s[scores={survivalistLevel=1..}] run effect give @s resistance 1 0 true
execute as @s[scores={survivalistLevel=2..}] run effect give @s strength 1 0 true
execute as @s[scores={survivalistLevel=3..}] run effect give @s speed 1 0 true

execute at @s if entity @s[scores={survivalistLevel=1}] run particle minecraft:flame ~ ~1 ~ 1.5 1.5 1.5 0.2 1 force
execute at @s if entity @s[scores={survivalistLevel=2}] run particle minecraft:flame ~ ~1 ~ 1.5 1.5 1.5 0.2 2 force
execute at @s if entity @s[scores={survivalistLevel=3..}] run particle minecraft:flame ~ ~1 ~ 1.5 1.5 1.5 0.2 3 force
