
replaceitem entity @s[scores={classMode=0}] hotbar.0 minecraft:carrot_on_a_stick{CustomModelData:5,Unbreakable:1b,display:{Name:'[{"text":"Wand of Fire (4)","italic":false}]',Lore:['[{"text":"Shift+Right Click to swap spells.","italic":false,"color":"gray"}]']}}
replaceitem entity @s[scores={classMode=1}] hotbar.0 minecraft:carrot_on_a_stick{CustomModelData:6,Unbreakable:1b,display:{Name:'[{"text":"Wand of Air (5)","italic":false}]',Lore:['[{"text":"Shift+Right Click to swap spells.","italic":false,"color":"gray"}]']}}
replaceitem entity @s[scores={classMode=2}] hotbar.0 minecraft:carrot_on_a_stick{CustomModelData:8,Unbreakable:1b,display:{Name:'[{"text":"Wand of Light (5)","italic":false}]',Lore:['[{"text":"Shift+Right Click to swap spells.","italic":false,"color":"gray"}]']}}
replaceitem entity @s[scores={classMode=3}] hotbar.0 minecraft:carrot_on_a_stick{CustomModelData:9,Unbreakable:1b,display:{Name:'[{"text":"Wand of Dark (3)","italic":false}]',Lore:['[{"text":"Shift+Right Click to swap spells.","italic":false,"color":"gray"}]']}}

replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:5225699},Unbreakable:1b}
replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:5225699},Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:5225699},Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

# execute unless entity @s[scores={pathCharges=1..}] run clear @s minecraft:carrot_on_a_stick


function kitpvp:classes/common-functions/resource/regen-resource-tick

# Fireball
scoreboard players set costAllowed temp 0

execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=0}] run scoreboard players set cost temp 4
execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=0}] run function kitpvp:classes/common-functions/resource/check-resource
execute if score costAllowed temp matches 1 run function kitpvp:classes/common-functions/resource/spend-resource
execute if score costAllowed temp matches 1 at @s positioned ~ ~1.5 ~ run function kitpvp:classes/common-functions/projectile-shoot/fireball-aim
execute if score costAllowed temp matches 1 run scoreboard players set @s sinceDealtDamage 0

# Mobility
scoreboard players set costAllowed temp 0

execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=1}] run scoreboard players set cost temp 5
execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=1}] run function kitpvp:classes/common-functions/resource/check-resource
execute if score costAllowed temp matches 1 run function kitpvp:classes/common-functions/resource/spend-resource
execute if score costAllowed temp matches 1 run effect give @s minecraft:speed 4 1
execute if score costAllowed temp matches 1 run effect give @s minecraft:slow_falling 4 0
execute if score costAllowed temp matches 1 run effect give @s minecraft:jump_boost 4 1

# Regen
scoreboard players set costAllowed temp 0

execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=2}] run scoreboard players set cost temp 5
execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=2}] run function kitpvp:classes/common-functions/resource/check-resource
execute if score costAllowed temp matches 1 run function kitpvp:classes/common-functions/resource/spend-resource
execute if score costAllowed temp matches 1 run effect give @s minecraft:saturation 5 0
execute if score costAllowed temp matches 1 run effect give @s minecraft:regeneration 6 1

# Fang
scoreboard players set costAllowed temp 0

execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=3}] run scoreboard players set cost temp 3
execute if entity @s[scores={carrotStickBin=1,crouchBin=0,classMode=3}] run function kitpvp:classes/common-functions/resource/check-resource
execute if score costAllowed temp matches 1 run function kitpvp:utility/internal/get-closest-enemy
execute if score costAllowed temp matches 1 at @s unless entity @e[tag=targets_enemy,distance=..10] run scoreboard players set costAllowed temp 0
execute if score costAllowed temp matches 1 run function kitpvp:classes/common-functions/resource/spend-resource
execute if score costAllowed temp matches 1 run tag @s add owner
execute if score costAllowed temp matches 1 at @s as @e[tag=targets_enemy,distance=..10] at @s run function kitpvp:utility/internal/projectiles/fang
execute if score costAllowed temp matches 1 run tag @e remove temp
execute if score costAllowed temp matches 1 run tag @s remove owner
execute if score costAllowed temp matches 1 run scoreboard players set @s sinceDealtDamage 0

# Switch Mode

execute if entity @s[scores={carrotStickBin=1,crouchBin=1}] run scoreboard players add @s classMode 1
execute if entity @s[scores={carrotStickBin=1,crouchBin=1,classMode=3..}] run scoreboard players set @s classMode 0

function kitpvp:classes/common-functions/resource/display/mana

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0 multiply_base
