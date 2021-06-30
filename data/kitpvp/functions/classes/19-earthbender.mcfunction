
replaceitem entity @s armor.feet minecraft:iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2},{id:"minecraft:protection",lvl:2}]}
replaceitem entity @s armor.legs minecraft:leather_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]}

replaceitem entity @s hotbar.0 minecraft:stone_sword{Unbreakable:1,display:{Lore:['[{"text":"Some say there was a war fought because of this weapon...","color":"gray"}]']}}

execute if entity @s[scores={pathCharges=1}] run replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{CustomModelData:2,Unbreakable:1b,display:{Name:'[{"text":"Create Path (1)","italic":false}]',Lore:['[{"text":"Creates a path of stone for you to climb.","italic":false,"color":"gray"}]']}}
execute if entity @s[scores={pathCharges=2}] run replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{CustomModelData:3,Unbreakable:1b,display:{Name:'[{"text":"Create Path (2)","italic":false}]',Lore:['[{"text":"Creates a path of stone for you to climb.","italic":false,"color":"gray"}]']}}
execute if entity @s[scores={pathCharges=3}] run replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{CustomModelData:4,Unbreakable:1b,display:{Name:'[{"text":"Create Path (3)","italic":false}]',Lore:['[{"text":"Creates a path of stone for you to climb.","italic":false,"color":"gray"}]']}}
execute if entity @s[scores={pathCharges=4..}] run replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{CustomModelData:4,Unbreakable:1b,display:{Name:'[{"text":"Create Path (3+)","italic":false}]',Lore:['[{"text":"Creates a path of stone for you to climb.","italic":false,"color":"gray"}]']}}
execute if entity @s[scores={cdWall=..0}] run replaceitem entity @s hotbar.2 minecraft:warped_fungus_on_a_stick{CustomModelData:2,Unbreakable:1b,display:{Name:'[{"text":"Create Wall","italic":false}]',Lore:['[{"text":"Create a wall of stone.","italic":false,"color":"gray"}]']}}

execute unless entity @s[scores={pathCharges=1..}] run clear @s minecraft:carrot_on_a_stick
execute unless entity @s[scores={cdWall=..0}] run clear @s minecraft:warped_fungus_on_a_stick

execute if entity @s[scores={carrotStickBin=1,pathCharges=1..}] run scoreboard players set blockTime temp 80

execute if entity @s[scores={carrotStickBin=1,pathCharges=1..}] at @s positioned ~ ~-1.1 ~ positioned ^ ^ ^0.25 run function kitpvp:utility/internal/blocks/create-cobblestone
execute if entity @s[scores={carrotStickBin=1,pathCharges=1..}] at @s positioned ~ ~-1.1 ~ positioned ^ ^ ^1.25 run function kitpvp:utility/internal/blocks/create-cobblestone
execute if entity @s[scores={carrotStickBin=1,pathCharges=1..}] at @s positioned ~ ~-1.1 ~ positioned ^ ^ ^2.25 run function kitpvp:utility/internal/blocks/create-cobblestone
execute if entity @s[scores={carrotStickBin=1,pathCharges=1..}] at @s positioned ~ ~-1.1 ~ positioned ^ ^ ^3.25 run function kitpvp:utility/internal/blocks/create-cobblestone
execute if entity @s[scores={carrotStickBin=1,pathCharges=1..}] at @s positioned ~ ~-1.1 ~ positioned ^ ^ ^4.25 run function kitpvp:utility/internal/blocks/create-cobblestone
execute if entity @s[scores={carrotStickBin=1,pathCharges=1..}] at @s positioned ~ ~-1.1 ~ positioned ^ ^ ^5.25 run function kitpvp:utility/internal/blocks/create-cobblestone

execute if entity @s[scores={carrotStickBin=1}] run scoreboard players remove @s pathCharges 1
execute if entity @s[scores={carrotStickBin=1}] run clear @s minecraft:carrot_on_a_stick

execute unless score @s pathCharges = pathCharges cooldown run scoreboard players add @s cdPath 1

execute if score @s cdPath = path cooldown run scoreboard players add @s pathCharges 1
execute if score @s cdPath = path cooldown run clear @s minecraft:carrot_on_a_stick
execute if score @s cdPath = path cooldown run scoreboard players set @s cdPath 0

execute if score @s pathCharges = pathCharges cooldown run scoreboard players set @s cdPath 0

execute if entity @s[scores={fungusStickBin=1,cdWall=..0}] run scoreboard players set blockTime temp 80

execute if entity @s[scores={fungusStickBin=1,cdWall=..0}] at @s positioned ~ ~1 ~ positioned ^1 ^1 ^3 run function kitpvp:utility/internal/blocks/create-cobblestone
execute if entity @s[scores={fungusStickBin=1,cdWall=..0}] at @s positioned ~ ~1 ~ positioned ^0 ^1 ^3 run function kitpvp:utility/internal/blocks/create-cobblestone
execute if entity @s[scores={fungusStickBin=1,cdWall=..0}] at @s positioned ~ ~1 ~ positioned ^-1 ^1 ^3 run function kitpvp:utility/internal/blocks/create-cobblestone
execute if entity @s[scores={fungusStickBin=1,cdWall=..0}] at @s positioned ~ ~1 ~ positioned ^1 ^0 ^3 run function kitpvp:utility/internal/blocks/create-cobblestone
execute if entity @s[scores={fungusStickBin=1,cdWall=..0}] at @s positioned ~ ~1 ~ positioned ^0 ^0 ^3 run function kitpvp:utility/internal/blocks/create-cobblestone
execute if entity @s[scores={fungusStickBin=1,cdWall=..0}] at @s positioned ~ ~1 ~ positioned ^-1 ^0 ^3 run function kitpvp:utility/internal/blocks/create-cobblestone
execute if entity @s[scores={fungusStickBin=1,cdWall=..0}] at @s positioned ~ ~1 ~ positioned ^1 ^-1 ^3 run function kitpvp:utility/internal/blocks/create-cobblestone
execute if entity @s[scores={fungusStickBin=1,cdWall=..0}] at @s positioned ~ ~1 ~ positioned ^0 ^-1 ^3 run function kitpvp:utility/internal/blocks/create-cobblestone
execute if entity @s[scores={fungusStickBin=1,cdWall=..0}] at @s positioned ~ ~1 ~ positioned ^-1 ^-1 ^3 run function kitpvp:utility/internal/blocks/create-cobblestone

execute if entity @s[scores={fungusStickBin=1}] run scoreboard players operation @s cdWall = wall cooldown
execute if entity @s[scores={cdWall=0..}] run scoreboard players remove @s cdWall 1

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 "SpeedClass" 0 multiply_base
