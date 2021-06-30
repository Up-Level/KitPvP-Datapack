# Class 3 - Bow Space

item replace entity @s hotbar.0 with minecraft:bow{Unbreakable: 1b, Enchantments: [{id: "minecraft:flame", lvl: 1}]}
item replace entity @s inventory.8 with arrow
item replace entity @s armor.head with glass
item replace entity @s armor.chest with chainmail_chestplate{Unbreakable: 1b}
item replace entity @s armor.feet with minecraft:chainmail_boots{Unbreakable: 1b, Enchantments: [{id: "minecraft:feather_falling", lvl: 2}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 "SpeedClass" 0 multiply_base

effect give @s fire_resistance 1 0 true
