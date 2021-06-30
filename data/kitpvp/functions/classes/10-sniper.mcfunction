# Class 11 - Sniper

execute store result score @s crossbowsHeld run clear @s crossbow 0
clear @a[scores={crossbowsHeld=2..}] crossbow 1

execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run item replace entity @s hotbar.0 with minecraft:crossbow{Unbreakable: 1b, Enchantments: [{id: "minecraft:piercing", lvl: 4}]}
item replace entity @s inventory.8 with tipped_arrow{CustomPotionEffects: [{Id: 15, Amplifier: 0, Duration: 80}]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable: 1b}
item replace entity @s armor.legs with leather_leggings{Unbreakable: 1b}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable: 1b, Enchantments: [{id: "minecraft:feather_falling", lvl: 2}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 "SpeedClass" 0 multiply_base
