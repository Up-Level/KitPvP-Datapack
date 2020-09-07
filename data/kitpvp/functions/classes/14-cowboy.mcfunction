# Class 16 - Cowboy

replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1b}
replaceitem entity @s hotbar.1 minecraft:fishing_rod{Unbreakable:1b,display:{Name:'[{"text":"Lasso","italic":false}]'}}
replaceitem entity @s armor.head leather_helmet{Unbreakable:1b}
replaceitem entity @s armor.chest chainmail_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0 multiply_base
