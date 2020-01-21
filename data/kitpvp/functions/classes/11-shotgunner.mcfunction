# Class 11 - Shotgunner

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run replaceitem entity @s hotbar.0 minecraft:crossbow{Unbreakable:1b,Enchantments:[{id:"minecraft:multishot",lvl:1},{id:"minecraft:quick_charge",lvl:4}]}
execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket"}]}] run replaceitem entity @s weapon.offhand firework_rocket{Fireworks:{Flight:-1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;14602026,15435844],FadeColors:[I;11743532]}]}}
replaceitem entity @s armor.chest chainmail_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs chainmail_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}
