# Class 101 - VIP

execute unless entity @s[nbt={Inventory:[{id:"minecraft:stone_sword"}]}] run replaceitem entity @s hotbar.0 minecraft:stone_sword{Unbreakable:1b}

replaceitem entity @s armor.head iron_helmet{Unbreakable:1b}
replaceitem entity @s armor.chest iron_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs diamond_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0 multiply_base
effect give @s glowing 1 0 true
