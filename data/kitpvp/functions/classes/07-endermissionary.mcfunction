# Class 7 - Ender Missionary

item replace entity @s hotbar.0 with minecraft:iron_axe{Unbreakable: 1, Enchantments: [{id: "minecraft:knockback", lvl: 1}]}
item replace entity @s hotbar.1 with minecraft:ender_pearl
item replace entity @s armor.chest with iron_chestplate{Unbreakable: 1b}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable: 1b, Enchantments: [{id: "minecraft:feather_falling", lvl: 2}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 "SpeedClass" 0 multiply_base

effect give @s night_vision 60 0 true
