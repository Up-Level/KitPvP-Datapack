# Class 14 - Berserker

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_axe"}]}] run replaceitem entity @s hotbar.0 minecraft:iron_axe{Unbreakable:1b}
replaceitem entity @s armor.head chainmail_helmet{Unbreakable:1b}
replaceitem entity @s armor.chest iron_chestplate{Unbreakable:1b}
replaceitem entity @s armor.feet iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

execute as @a[scores={killBin=1..,class=14}] run effect give @s regeneration 1 255 true
scoreboard players set @a[scores={killBin=1..}] killBin 0
