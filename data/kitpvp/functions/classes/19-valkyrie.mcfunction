# Class 19 - Valkyrie

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword"}]}] run replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1b}
replaceitem entity @s armor.chest chainmail_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs chainmail_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

execute as @s[scores={killsSinceDeath=1..}] run effect give @s speed 1 1 true
execute as @s[scores={killsSinceDeath=2..}] run effect give @s jump_boost 1 1 true
execute as @s[scores={killsSinceDeath=3..}] run effect give @s slow_falling 1 0 true

execute at @s if entity @s[scores={killsSinceDeath=1}] run particle minecraft:happy_villager ~ ~1 ~ 1.5 1.5 1.5 0.2 1 force
execute at @s if entity @s[scores={killsSinceDeath=2}] run particle minecraft:happy_villager ~ ~1 ~ 1.5 1.5 1.5 0.2 2 force
execute at @s if entity @s[scores={killsSinceDeath=3..}] run particle minecraft:happy_villager ~ ~1 ~ 1.5 1.5 1.5 0.2 3 force
