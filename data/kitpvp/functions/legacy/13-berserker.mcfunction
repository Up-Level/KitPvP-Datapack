# Class 14 - Berserker

execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_axe"}]}] run item replace entity @s hotbar.0 with minecraft:iron_axe{Unbreakable: 1b}
item replace entity @s armor.head with chainmail_helmet{Unbreakable: 1b}
item replace entity @s armor.chest with iron_chestplate{Unbreakable: 1b}
item replace entity @s armor.feet with iron_boots{Unbreakable: 1b, Enchantments: [{id: "minecraft:feather_falling", lvl: 2}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 "SpeedClass" 0 multiply_base

execute if entity @s[scores={killBin=1..}] run effect give @s regeneration 1 255 true
