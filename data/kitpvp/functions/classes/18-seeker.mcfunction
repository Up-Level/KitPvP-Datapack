# Class 18 - Seeker

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run replaceitem entity @s hotbar.0 bow{Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}]}
replaceitem entity @s inventory.8 spectral_arrow
replaceitem entity @s armor.chest chainmail_chestplate{Unbreakable:1}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}
