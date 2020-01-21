# Class 2 - Bow Scout

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run replaceitem entity @s hotbar.0 bow{Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}]}
replaceitem entity @s inventory.8 arrow
replaceitem entity @s armor.head leather_helmet{Unbreakable:1}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1}
replaceitem entity @s armor.legs iron_leggings{Unbreakable:1}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:3}]}

effect give @s speed 1 1 true
effect give @s jump_boost 1 1 true
