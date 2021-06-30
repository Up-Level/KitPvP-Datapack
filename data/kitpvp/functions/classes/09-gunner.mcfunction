# Class 10 - Gunner

execute store result score @s crossbowsHeld run clear @s crossbow 0
clear @a[scores={crossbowsHeld=2..}] crossbow 1

execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run item replace entity @s hotbar.0 with minecraft:crossbow{Unbreakable: 1b, Enchantments: [{id: "minecraft:quick_charge", lvl: 2}]}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket"}]}] run item replace entity @s weapon.offhand with firework_rocket{Fireworks: {Flight: 1, Explosions: [{Type: 0, Flicker: 0, Trail: 0, Colors: [I; 14602026, 15435844], FadeColors: [I; 11743532]}]}}
item replace entity @s armor.chest with chainmail_chestplate{Unbreakable: 1b}
item replace entity @s armor.legs with iron_leggings{Unbreakable: 1b}
item replace entity @s armor.feet with minecraft:iron_boots{Unbreakable: 1b, Enchantments: [{id: "minecraft:feather_falling", lvl: 2}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 "SpeedClass" 0 multiply_base
