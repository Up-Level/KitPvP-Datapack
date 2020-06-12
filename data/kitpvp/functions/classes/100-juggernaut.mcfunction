# Class 99 Juggernaut

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_sword"}]}] run replaceitem entity @s hotbar.0 minecraft:netherite_sword{Unbreakable:1b}
execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_axe"}]}] run replaceitem entity @s hotbar.1 minecraft:iron_axe{Unbreakable:1b}
execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run replaceitem entity @s hotbar.2 bow{Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}]}
execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:shield"}]}] run replaceitem entity @s weapon.offhand minecraft:shield{Unbreakable:1b}
replaceitem entity @s inventory.8 arrow

replaceitem entity @s armor.head netherite_helmet{Unbreakable:1b}
replaceitem entity @s armor.chest netherite_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs netherite_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet netherite_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:8}]}

effect give @s slowness 1 0 true
effect give @s jump_boost 1 3 true