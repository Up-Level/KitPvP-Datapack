# Class 7 - Ender Missionary

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_axe"}]}] run replaceitem entity @s hotbar.0 minecraft:iron_axe{Unbreakable:1,Enchantments:[{id:"minecraft:knockback",lvl:1}]}
replaceitem entity @s hotbar.1 minecraft:ender_pearl
replaceitem entity @s armor.chest diamond_chestplate{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

effect give @s night_vision 60 0 true
