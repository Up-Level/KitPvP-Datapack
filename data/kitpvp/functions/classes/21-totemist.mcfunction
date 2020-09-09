
replaceitem @s hotbar.0 minecraft:iron_sword{Unbreakable:1b}

execute if entity @s[scores={usedTotemBin=0,classMode=1..}] unless entity @s[nbt={Inventory:[{id:"minecraft:totem_of_undying"}]}] run replaceitem entity @s weapon.offhand minecraft:totem_of_undying 1
execute if score @s usedTotemBin matches 1.. run clear @s minecraft:totem_of_undying 177013
execute if score @s usedTotemBin matches 1.. run scoreboard players remove @s classMode 1

replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs minecraft:leather_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

execute if score @s dmgDealtAlive matches 100.. run scoreboard players add @s classMode 1
execute if score @s dmgDealtAlive matches 100.. run scoreboard players set @s dmgDealtAlive 0

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0 multiply_base