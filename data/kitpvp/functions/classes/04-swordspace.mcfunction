# Class 4 - Sword Space

item replace entity @s hotbar.0 with minecraft:iron_sword{Unbreakable: 1b, Enchantments: [{id: "minecraft:fire_aspect", lvl: 2}]}
item replace entity @s armor.head with glass
item replace entity @s armor.chest with leather_chestplate{Unbreakable: 1b}
item replace entity @s armor.legs with chainmail_leggings{Unbreakable: 1b}
item replace entity @s armor.feet with minecraft:chainmail_boots{Unbreakable: 1b, Enchantments: [{id: "minecraft:feather_falling", lvl: 2}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 "SpeedClass" 0 multiply_base

effect give @s fire_resistance 1 0 true
