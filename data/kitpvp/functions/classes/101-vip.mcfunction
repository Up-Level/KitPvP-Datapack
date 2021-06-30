# Class 101 - VIP

item replace entity @s hotbar.0 with minecraft:stone_sword{Unbreakable: 1b}

item replace entity @s armor.head with iron_helmet{Unbreakable: 1b}
item replace entity @s armor.chest with iron_chestplate{Unbreakable: 1b}
item replace entity @s armor.legs with diamond_leggings{Unbreakable: 1b}
item replace entity @s armor.feet with iron_boots{Unbreakable: 1b, Enchantments: [{id: "minecraft:feather_falling", lvl: 2}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 "SpeedClass" 0 multiply_base
effect give @s glowing 1 0 true
