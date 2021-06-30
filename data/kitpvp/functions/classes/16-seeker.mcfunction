# Class 18 - Seeker

item replace entity @s hotbar.0 with bow{Unbreakable: 1b}
item replace entity @s hotbar.1 with minecraft:stone_sword{Unbreakable: 1b}
item replace entity @s inventory.8 with spectral_arrow
item replace entity @s armor.chest with chainmail_chestplate{Unbreakable: 1}
item replace entity @s armor.legs with leather_leggings{Unbreakable: 1}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable: 1b, Enchantments: [{id: "minecraft:feather_falling", lvl: 2}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 "SpeedClass" 0 multiply_base

function kitpvp:utility/internal/give-compass
