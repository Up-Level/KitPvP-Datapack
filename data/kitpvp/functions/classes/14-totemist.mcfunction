# Class 14 - Totemist

item replace entity @s hotbar.0 with minecraft:iron_axe{Unbreakable: 1b}

execute if entity @s[scores={usedTotemBin=0,classMode=1..}] unless entity @s[nbt={Inventory:[{id:"minecraft:totem_of_undying"}]}] run item replace entity @s weapon.offhand with minecraft:totem_of_undying 1
execute if score @s usedTotemBin matches 1.. run clear @s minecraft:totem_of_undying 177013
execute if score @s usedTotemBin matches 1.. run scoreboard players remove @s classMode 1

item replace entity @s armor.head with minecraft:golden_helmet{Unbreakable: 1b}
item replace entity @s armor.legs with minecraft:golden_leggings{Unbreakable: 1b}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable: 1b, Enchantments: [{id: "minecraft:feather_falling", lvl: 2}]}

execute if score @s dmgDealtAlive matches 350.. run scoreboard players add @s classMode 1
execute if score @s dmgDealtAlive matches 350.. run scoreboard players set @s dmgDealtAlive 0

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 "SpeedClass" 0 multiply_base
