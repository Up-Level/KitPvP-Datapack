# Class 102 - Primary Infected

execute as @s at @s run particle minecraft:dust 0 0.27058823529 0 1 ~ ~1 ~ 0.25 .35 0.25 0.05 1 force
replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:17664}}
replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:17664},Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 "SpeedClass" 0.2 multiply_base
effect give @s minecraft:hunger 1 9 true
effect give @s minecraft:saturation 1 255 true
effect give @s minecraft:strength 1 1 true
effect give @s resistance 1 0 true
