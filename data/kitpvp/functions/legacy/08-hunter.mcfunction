# Class 8 - Hunter

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run item replace entity @s hotbar.0 with minecraft:bow{Unbreakable: 1b, Enchantments: [{id: "minecraft:infinity", lvl: 1}]}
execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run item replace entity @s hotbar.1 with minecraft:wooden_sword{Unbreakable: 1}
item replace entity @s inventory.8 with tipped_arrow{CustomPotionEffects: [{Id: 19, Amplifier: 2, Duration: 45}]}
item replace entity @s armor.chest with chainmail_chestplate{Unbreakable: 1b}
item replace entity @s armor.legs with leather_leggings{Unbreakable: 1b}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable: 1b, Enchantments: [{id: "minecraft:feather_falling", lvl: 2}]}
