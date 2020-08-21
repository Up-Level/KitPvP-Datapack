# Class 2 - Scout

execute unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run replaceitem entity @s hotbar.1 bow{Unbreakable:1b}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword"}]}] run replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1b}
replaceitem entity @s inventory.8 arrow
replaceitem entity @s armor.head leather_helmet{Unbreakable:1}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:4}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0.2 multiply_base

effect give @s jump_boost 1 1 true
