# Class 1 - Test Class

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword"}]}] run replaceitem entity @s hotbar.0 iron_sword{Unbreakable:1b}
replaceitem entity @s armor.head leather_helmet{Unbreakable:1}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1}
execute unless score map settings matches 1 run replaceitem entity @s armor.feet leather_boots{Unbreakable:1}
execute if score map settings matches 1 run replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:100}]}
