# Class 17 - Viking

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_axe"}]}] run replaceitem entity @s hotbar.0 minecraft:iron_axe{Unbreakable:1b}
execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:shield"}]}] run replaceitem entity @s weapon.offhand minecraft:shield{Unbreakable:1b}
replaceitem entity @s armor.head chainmail_helmet{Unbreakable:1b}
replaceitem entity @s armor.legs chainmail_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}
