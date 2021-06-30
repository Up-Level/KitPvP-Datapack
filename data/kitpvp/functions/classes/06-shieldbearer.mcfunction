# Class 6 - Shieldbearer

item replace entity @s hotbar.0 with minecraft:iron_sword{Unbreakable: 1b}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:shield"}]}] run item replace entity @s weapon.offhand with minecraft:shield{Unbreakable: 1b}
item replace entity @s armor.head with iron_helmet{Unbreakable: 1b}
item replace entity @s armor.chest with iron_chestplate{Unbreakable: 1b}
item replace entity @s armor.legs with iron_leggings{Unbreakable: 1b}
item replace entity @s armor.feet with minecraft:iron_boots{Unbreakable: 1b, Enchantments: [{id: "minecraft:feather_falling", lvl: 2}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 "SpeedClass" 0 multiply_base
