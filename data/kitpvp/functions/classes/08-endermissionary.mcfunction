# Class 8 - Ender Missionary

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_axe"}]}] run replaceitem entity @s hotbar.0 minecraft:iron_axe{Unbreakable:1,Enchantments:[{id:"minecraft:knockback",lvl:2}]}
replaceitem entity @s hotbar.1 minecraft:ender_pearl
replaceitem entity @s armor.chest diamond_chestplate{Unbreakable:1b}
execute unless score map settings matches 1 run replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b}
execute if score map settings matches 1 run replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:100}]}

effect give @s night_vision 60 0 true
