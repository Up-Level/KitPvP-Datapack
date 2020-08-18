# Class 18 - Seeker

execute unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run replaceitem entity @s hotbar.0 bow{Unbreakable:1b}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:stone_sword"}]}] run replaceitem entity @s hotbar.1 minecraft:stone_sword{Unbreakable:1b}
replaceitem entity @s inventory.8 spectral_arrow
replaceitem entity @s armor.chest chainmail_chestplate{Unbreakable:1}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

function kitpvp:utility/internal/give-compass
