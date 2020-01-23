# Class 11 - Sniper

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run replaceitem entity @s hotbar.0 minecraft:crossbow{Unbreakable:1b}
replaceitem entity @s inventory.8 tipped_arrow{CustomPotionEffects:[{Id:7,Amplifier:1,Duration:1},{Id:15,Amplifier:0,Duration:4}]}
replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}
