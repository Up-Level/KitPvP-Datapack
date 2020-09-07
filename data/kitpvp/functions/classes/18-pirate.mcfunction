# Class 22 - Pirate

replaceitem entity @s armor.chest iron_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs chainmail_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1b}

execute if entity @s[scores={cdBoat=..-1}] run replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{CustomModelData:1,Unbreakable:1b,display:{Name:'[{"text":"Create Boat","italic":false}]',Lore:['[{"text":"Creates a boat for you to ride.","italic":false,"color":"gray"}]']}}
execute run replaceitem entity @s hotbar.2 minecraft:warped_fungus_on_a_stick{CustomModelData:1,Unbreakable:1b,display:{Name:'[{"text":"Destroy Boat","italic":false}]',Lore:['[{"text":"Destory your previous boat.","italic":false,"color":"gray"}]']}}

execute unless entity @s[scores={cdBoat=..-1}] run clear @s minecraft:carrot_on_a_stick

execute if entity @s[scores={fungusStickBin=1..}] run function kitpvp:utility/internal/destroy-boat

execute if entity @s[scores={carrotStickBin=1..,cdBoat=..-1}] run function kitpvp:utility/internal/destroy-boat

execute if entity @s[scores={carrotStickBin=1..,cdBoat=..-1}] run scoreboard players reset @e compareUUID0
execute if entity @s[scores={carrotStickBin=1..,cdBoat=..-1}] run scoreboard players reset @e compareUUID1
execute if entity @s[scores={carrotStickBin=1..,cdBoat=..-1}] run scoreboard players reset @e compareUUID2
execute if entity @s[scores={carrotStickBin=1..,cdBoat=..-1}] run scoreboard players reset @e compareUUID3

execute if entity @s[scores={carrotStickBin=1..,cdBoat=..-1}] at @s run summon boat ~ ~0.5 ~
execute at @s[scores={carrotStickBin=1..,cdBoat=..-1}] run scoreboard players operation @e[type=boat,limit=1,sort=nearest] ProjectileUUID0 = @s UUID0
execute at @s[scores={carrotStickBin=1..,cdBoat=..-1}] run scoreboard players operation @e[type=boat,limit=1,sort=nearest] ProjectileUUID1 = @s UUID1
execute at @s[scores={carrotStickBin=1..,cdBoat=..-1}] run scoreboard players operation @e[type=boat,limit=1,sort=nearest] ProjectileUUID2 = @s UUID2
execute at @s[scores={carrotStickBin=1..,cdBoat=..-1}] run scoreboard players operation @e[type=boat,limit=1,sort=nearest] ProjectileUUID3 = @s UUID3

execute if entity @s[scores={carrotStickBin=1..,cdBoat=..-1}] run scoreboard players operation @s cdBoat = boat cooldown

scoreboard players remove @s[scores={cdBoat=0..}] cdBoat 1

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0 multiply_base
