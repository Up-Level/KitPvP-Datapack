
execute unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] if entity @s run replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{CustomModelData:2,Unbreakable:1b,display:{Name:'[{"text":"Create Path (1)","italic":false}]',Lore:['[{"text":"Creates a path of stone for you to climb.","italic":false,"color":"gray"}]']}}

# execute unless entity @s[scores={pathCharges=1..}] run clear @s minecraft:carrot_on_a_stick

execute if entity @s[scores={carrotStickBin=1,crouchBin=1}] at @s run function mathf:minecraft/entity-rotation-to-vector

execute if entity @s[scores={carrotStickBin=1}] at @s run tag @s add entity0
execute if entity @s[scores={carrotStickBin=1}] at @s run tag @s add owner

execute if entity @s[scores={carrotStickBin=1}] at @s run scoreboard players operation pow0 temp = out0 mIO
execute if entity @s[scores={carrotStickBin=1}] at @s run scoreboard players operation pow1 temp = out1 mIO
execute if entity @s[scores={carrotStickBin=1}] at @s run scoreboard players operation pow2 temp = out2 mIO

execute if entity @s[scores={carrotStickBin=1}] at @s run scoreboard players operation mot0 temp = out0 mIO
execute if entity @s[scores={carrotStickBin=1}] at @s run scoreboard players operation mot1 temp = out1 mIO
execute if entity @s[scores={carrotStickBin=1}] at @s run scoreboard players operation mot2 temp = out2 mIO

execute if entity @s[scores={carrotStickBin=1}] at @s positioned ~ ~1.5 ~ run function kitpvp:utility/internal/projectiles/fireball

execute if entity @s[scores={carrotStickBin=1}] at @s run tag @e remove owner

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0 multiply_base
