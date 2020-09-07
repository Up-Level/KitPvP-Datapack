# Class 4 - Sword Space

replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1b,Enchantments:[{id:"minecraft:fire_aspect",lvl:2}]}
replaceitem entity @s armor.head glass
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs chainmail_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0 multiply_base

effect give @s fire_resistance 1 0 true
