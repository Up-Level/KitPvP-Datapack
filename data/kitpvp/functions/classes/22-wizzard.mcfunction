
execute unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] if entity @s run replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{CustomModelData:2,Unbreakable:1b,display:{Name:'[{"text":"Create Path (1)","italic":false}]',Lore:['[{"text":"Creates a path of stone for you to climb.","italic":false,"color":"gray"}]']}}

# execute unless entity @s[scores={pathCharges=1..}] run clear @s minecraft:carrot_on_a_stick

execute if entity @s[scores={carrotStickBin=1}] at @s run function kitpvp:utility/internal/get-closest-enemy
tag @e[tag=chosen_enemy,distance=..10] add target
tag @s add owner
execute if entity @s[scores={carrotStickBin=1}] at @s positioned ~ ~1.65 ~ run function kitpvp:utility/internal/projectiles/shulker_bullet

tag @e remove target
tag @e remove owner

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0 multiply_base
