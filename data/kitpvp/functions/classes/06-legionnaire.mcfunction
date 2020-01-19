# Class 6 - Legionnaire

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_axe"}]}] run replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1b}
replaceitem entity @s armor.head diamond_helmet{Unbreakable:1b}
replaceitem entity @s armor.chest diamond_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs diamond_leggings{Unbreakable:1b}
execute unless score map settings matches 1 run replaceitem entity @s armor.feet minecraft:diamond_boots{Unbreakable:1b}
execute if score map settings matches 1 run replaceitem entity @s armor.feet minecraft:diamond_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:100}]}

effect give @s slowness 1 2 true
