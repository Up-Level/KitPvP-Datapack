# Class 2 - Scout

item replace entity @s hotbar.1 with bow{Unbreakable: 1b}
item replace entity @s hotbar.0 with minecraft:iron_sword{Unbreakable: 1b}
item replace entity @s inventory.8 with arrow
item replace entity @s armor.head with leather_helmet{Unbreakable: 1}
item replace entity @s armor.chest with leather_chestplate{Unbreakable: 1}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable: 1b, Enchantments: [{id: "minecraft:feather_falling", lvl: 4}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 "SpeedClass" 0.2 multiply_base

effect give @s jump_boost 1 1 true
