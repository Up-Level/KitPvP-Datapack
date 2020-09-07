# Class 100 - Juggernaut

replaceitem entity @s hotbar.0 minecraft:netherite_sword{Unbreakable:1b}
replaceitem entity @s hotbar.1 minecraft:iron_axe{Unbreakable:1b}
replaceitem entity @s hotbar.2 bow{Unbreakable:1b}
replaceitem entity @s weapon.offhand minecraft:shield{Unbreakable:1b}
replaceitem entity @s inventory.8 arrow

replaceitem entity @s armor.head netherite_helmet{Unbreakable:1b}
replaceitem entity @s armor.chest netherite_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs netherite_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet netherite_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:8}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass -0.15 multiply_base
effect give @s jump_boost 1 3 true
