# Class 5 - Sword Space

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1b,Enchantments:[{id:"minecraft:fire_aspect",lvl:2}]}
replaceitem entity @s armor.head glass
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs chainmail_leggings{Unbreakable:1b}
execute unless score map settings matches 1 run replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1b}
execute if score map settings matches 1 run replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:100}]}

effect give @s fire_resistance 1 0 true
