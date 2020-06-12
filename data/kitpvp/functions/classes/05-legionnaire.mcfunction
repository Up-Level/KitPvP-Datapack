# Class 5 - Legionnaire

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword"}]}] run replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1b}
replaceitem entity @s armor.head diamond_helmet{Unbreakable:1b}
replaceitem entity @s armor.chest diamond_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs iron_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

effect give @s slowness 1 1 true
