# Class 10 - Gunner

execute store result score @s crossbowsHeld run clear @s crossbow 0
clear @a[scores={crossbowsHeld=2..}] crossbow 1

execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run replaceitem entity @s hotbar.0 minecraft:crossbow{Unbreakable:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:2}]}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket"}]}] run replaceitem entity @s weapon.offhand firework_rocket{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;14602026,15435844],FadeColors:[I;11743532]}]}}
replaceitem entity @s armor.chest chainmail_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs iron_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0 multiply_base
