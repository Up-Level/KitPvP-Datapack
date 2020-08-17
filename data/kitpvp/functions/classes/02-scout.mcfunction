# Class 2 - Scout

execute unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run replaceitem entity @s hotbar.1 bow{Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}]}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword"}]}] run replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1b}
replaceitem entity @s inventory.8 arrow
replaceitem entity @s armor.head leather_helmet{Unbreakable:1}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4}]}

effect give @s speed 1 1 true
effect give @s jump_boost 1 1 true
