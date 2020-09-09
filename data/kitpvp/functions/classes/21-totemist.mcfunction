
replaceitem entity @s[scores={classMode=0}] hotbar.0 minecraft:carrot_on_a_stick{CustomModelData:5,Unbreakable:1b,display:{Name:'[{"text":"Wand of Fire (4)","italic":false}]',Lore:['[{"text":"Shift+Right Click to swap spells.","italic":false,"color":"gray"}]']}}

execute if entity @s[scores={usedTotemBin=0,classMode=1..}] run replaceitem entity @s weapon.offhand minecraft:totem_of_undying 1
execute if score @s usedTotemBin matches 1.. run clear @s minecraft:totem_of_undying 177013
execute if score @s usedTotemBin matches 1.. run scoreboard players remove @s classMod 1

replaceitem entity @s armor.chest minecraft:leather_chestplate
replaceitem entity @s armor.legs minecraft:leather_leggings
replaceitem entity @s armor.feet minecraft:leather_boots{Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

execute if score @s dmgDealtAlive matches 30.. run scoreboard players add @s classMode 1
execute if score @s dmgDealtAlive matches 30.. run scoreboard players set @s dmgDealtAlive 0

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0 multiply_base
