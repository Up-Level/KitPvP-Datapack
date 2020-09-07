
replaceitem entity @s hotbar.1 minecraft:carrot_on_a_stick{CustomModelData:2,Unbreakable:1b,display:{Name:'[{"text":"Create Path (1)","italic":false}]',Lore:['[{"text":"Creates a path of stone for you to climb.","italic":false,"color":"gray"}]']}}

# execute unless entity @s[scores={pathCharges=1..}] run clear @s minecraft:carrot_on_a_stick


function kitpvp:classes/common-functions/resource/regen-resource-tick

# Fireball
scoreboard players set costAllowed temp 0

execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=0}] run scoreboard players set cost temp 5
execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=0}] run function kitpvp:classes/common-functions/resource/check-resource
execute if score costAllowed temp matches 1 run function kitpvp:classes/common-functions/resource/spend-resource
execute if score costAllowed temp matches 1 at @s positioned ~ ~1.5 ~ run function kitpvp:classes/common-functions/projectile-shoot/fireball-aim

# Arrow
scoreboard players set costAllowed temp 0

execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=1}] run scoreboard players set cost temp 2
execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=1}] run function kitpvp:classes/common-functions/resource/check-resource
execute if score costAllowed temp matches 1 run function kitpvp:classes/common-functions/resource/spend-resource
execute if score costAllowed temp matches 1 at @s positioned ~ ~3 ~ positioned ^-1 ^ ^ run function kitpvp:classes/common-functions/projectile-shoot/arrow-auto
execute if score costAllowed temp matches 1 at @s positioned ~ ~3 ~ positioned ^1 ^ ^ run function kitpvp:classes/common-functions/projectile-shoot/arrow-auto

# Mobility
scoreboard players set costAllowed temp 0

execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=2}] run scoreboard players set cost temp 3
execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=2}] run function kitpvp:classes/common-functions/resource/check-resource
execute if score costAllowed temp matches 1 run function kitpvp:classes/common-functions/resource/spend-resource
execute if score costAllowed temp matches 1 run effect give @s minecraft:speed 5 0
execute if score costAllowed temp matches 1 run effect give @s minecraft:slow_falling 5 0

# Switch Mode

execute if entity @s[scores={carrotStickBin=1,crouchBin=1}] run scoreboard players add @s classMode 1
execute if entity @s[scores={carrotStickBin=1,crouchBin=1,classMode=3..}] run scoreboard players set @s classMode 0

function kitpvp:classes/common-functions/resource/display/mana

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0 multiply_base
