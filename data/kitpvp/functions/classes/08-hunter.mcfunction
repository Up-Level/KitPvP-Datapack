# Class 8 - Hunter

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run replaceitem entity @s hotbar.0 minecraft:bow{Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}]}
execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run replaceitem entity @s hotbar.1 minecraft:wooden_sword{Unbreakable:1}
replaceitem entity @s inventory.8 tipped_arrow{CustomPotionEffects:[{Id:19,Amplifier:2,Duration:45}]}
replaceitem entity @s armor.chest chainmail_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}
