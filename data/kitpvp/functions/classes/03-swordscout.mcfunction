# Class 3 - Sword Scout

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_sword"}]}] run replaceitem entity @s hotbar.0 iron_sword{Unbreakable:1b}
replaceitem entity @s armor.head leather_helmet{Unbreakable:1}
replaceitem entity @s armor.chest elytra{Unbreakable:1}
replaceitem entity @s armor.legs diamond_leggings{Unbreakable:1}
execute unless score map settings matches 1 run replaceitem entity @s armor.feet minecraft:iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:3}]}
execute if score map settings matches 1 run replaceitem entity @s armor.feet minecraft:iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:100}]}

effect give @s speed 1 0 true
effect give @s jump_boost 1 1 true
