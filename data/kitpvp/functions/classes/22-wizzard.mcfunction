
execute unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] if entity @s run replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{CustomModelData:2,Unbreakable:1b,display:{Name:'[{"text":"Create Path (1)","italic":false}]',Lore:['[{"text":"Creates a path of stone for you to climb.","italic":false,"color":"gray"}]']}}

# execute unless entity @s[scores={pathCharges=1..}] run clear @s minecraft:carrot_on_a_stick

execute if entity @s[scores={carrotStickBin=1}] at @s run function kitpvp:utility/internal/get-closest-enemy

tag @e[tag=chosen_enemy] add entity1
tag @s add entity0
tag @s add owner

function mathf:minecraft/vector-between-entities

scoreboard players operation inp0 mIO = out0 mIO
scoreboard players operation inp1 mIO = out1 mIO
scoreboard players operation inp2 mIO = out2 mIO

function mathf:vector/normalise

scoreboard players operation mot0 temp = out0 mIO
scoreboard players operation mot1 temp = out1 mIO
scoreboard players operation mot2 temp = out2 mIO

scoreboard players operation pow0 temp = out0 mIO
scoreboard players operation pow1 temp = out1 mIO
scoreboard players operation pow2 temp = out2 mIO

execute if entity @s[scores={carrotStickBin=1}] at @s positioned ~ ~1.65 ~ run function kitpvp:utility/internal/projectiles/fireball

tag @e remove owner

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0 multiply_base
