# Class 6 - Shieldbearer

execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword"}]}] run replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1b}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:shield"}]}] run replaceitem entity @s weapon.offhand minecraft:shield{Unbreakable:1b}
replaceitem entity @s armor.head iron_helmet{Unbreakable:1b}
replaceitem entity @s armor.chest iron_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs iron_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}
