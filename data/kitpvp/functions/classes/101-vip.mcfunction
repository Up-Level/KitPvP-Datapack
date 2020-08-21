# Class 101 - VIP

execute unless entity @s[nbt={Inventory:[{id:"minecraft:netherite_sword"}]}] run replaceitem entity @s hotbar.0 minecraft:netherite_sword{Unbreakable:1b}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_axe"}]}] run replaceitem entity @s hotbar.1 minecraft:iron_axe{Unbreakable:1b}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run replaceitem entity @s hotbar.2 bow{Unbreakable:1b}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:shield"}]}] run replaceitem entity @s weapon.offhand minecraft:shield{Unbreakable:1b}
replaceitem entity @s inventory.8 arrow

replaceitem entity @s armor.head iron_helmet{Unbreakable:1b}
replaceitem entity @s armor.chest iron_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs diamond_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

effect give @s slowness 1 0 true
effect give @s glowing 1 0 true
