# Class 11 - Sniper

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run replaceitem entity @s hotbar.0 minecraft:crossbow{Unbreakable:1b,Enchantments:[{id:"minecraft:piercing",lvl:3}]}
replaceitem entity @s inventory.8 arrow
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}
