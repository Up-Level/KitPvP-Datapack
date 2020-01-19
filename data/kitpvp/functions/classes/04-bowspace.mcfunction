# Class 4 - Bow Space

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run replaceitem entity @s hotbar.0 minecraft:bow{Unbreakable:1b,Enchantments:[{id:"minecraft:flame",lvl:1},{id:"minecraft:infinity",lvl:1}]}
replaceitem entity @s inventory.8 arrow
replaceitem entity @s armor.head glass
replaceitem entity @s armor.chest chainmail_chestplate{Unbreakable:1b}
execute unless score map settings matches 1 run replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1b}
execute if score map settings matches 1 run replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:100}]}

effect give @s fire_resistance 1 0 true
