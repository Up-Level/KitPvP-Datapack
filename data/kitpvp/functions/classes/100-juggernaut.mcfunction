# Class 100 - Juggernaut

item replace entity @s hotbar.0 with minecraft:netherite_sword{Unbreakable: 1b}
item replace entity @s hotbar.1 with minecraft:iron_axe{Unbreakable: 1b}
item replace entity @s hotbar.2 with bow{Unbreakable: 1b}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:shield"}]}] run item replace entity @s weapon.offhand with minecraft:shield{Unbreakable: 1b}
item replace entity @s inventory.8 with arrow

item replace entity @s armor.head with netherite_helmet{Unbreakable: 1b}
item replace entity @s armor.chest with netherite_chestplate{Unbreakable: 1b}
item replace entity @s armor.legs with netherite_leggings{Unbreakable: 1b}
item replace entity @s armor.feet with netherite_boots{Unbreakable: 1b, Enchantments: [{id: "minecraft:feather_falling", lvl: 8}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 "SpeedClass" -0.15 multiply_base
effect give @s jump_boost 1 3 true
