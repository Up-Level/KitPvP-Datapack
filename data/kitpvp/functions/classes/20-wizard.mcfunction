
replaceitem entity @s[scores={classMode=0}] hotbar.0 minecraft:carrot_on_a_stick{CustomModelData:5,Unbreakable:1b,display:{Name:'[{"text":"Wand of Fire","italic":false}]',Lore:['[{"text":"Shift+Right Click to swap spells.","italic":false,"color":"gray"}]']}}
replaceitem entity @s[scores={classMode=1}] hotbar.0 minecraft:carrot_on_a_stick{CustomModelData:6,Unbreakable:1b,display:{Name:'[{"text":"Wand of Air","italic":false}]',Lore:['[{"text":"Shift+Right Click to swap spells.","italic":false,"color":"gray"}]']}}

# execute unless entity @s[scores={pathCharges=1..}] run clear @s minecraft:carrot_on_a_stick


function kitpvp:classes/common-functions/resource/regen-resource-tick

# Fireball
scoreboard players set costAllowed temp 0

execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=0}] run scoreboard players set cost temp 5
execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=0}] run function kitpvp:classes/common-functions/resource/check-resource
execute if score costAllowed temp matches 1 run function kitpvp:classes/common-functions/resource/spend-resource
execute if score costAllowed temp matches 1 at @s positioned ~ ~1.5 ~ run function kitpvp:classes/common-functions/projectile-shoot/fireball-aim


# Mobility
scoreboard players set costAllowed temp 0

execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=1}] run scoreboard players set cost temp 3
execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=1}] run function kitpvp:classes/common-functions/resource/check-resource
execute if score costAllowed temp matches 1 run function kitpvp:classes/common-functions/resource/spend-resource
execute if score costAllowed temp matches 1 run effect give @s minecraft:speed 5 0
execute if score costAllowed temp matches 1 run effect give @s minecraft:slow_falling 5 0

# Switch Mode

execute if entity @s[scores={carrotStickBin=1,crouchBin=1}] run scoreboard players add @s classMode 1
execute if entity @s[scores={carrotStickBin=1,crouchBin=1,classMode=2..}] run scoreboard players set @s classMode 0

function kitpvp:classes/common-functions/resource/display/mana

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0 multiply_base
