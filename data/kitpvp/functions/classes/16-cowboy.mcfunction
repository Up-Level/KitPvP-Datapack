# Class 16 - Cowboy

execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword"}]}] run replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1b}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:fishing_rod"}]}] run replaceitem entity @s hotbar.1 minecraft:fishing_rod{Unbreakable:1b,display:{Name:'[{"text":"Lasso","italic":false}]'}}
replaceitem entity @s armor.head leather_helmet{Unbreakable:1b}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}
