# Runs on all classes

# Set throwTrident Value
execute unless entity @s[scores={throwTrident=0}] run scoreboard players set @s throwTrident 0
scoreboard players operation @s hadTridentCount = @s tridentCount
execute store result score @s tridentCount run clear @s minecraft:trident 0
execute if entity @s[scores={dropTrident=0,usedTridentBin=1}] if score @s hadTridentCount > @s tridentCount run scoreboard players set @s throwTrident 1
execute if score @s dropTrident >= one number run scoreboard players set @s dropTrident 0



# Give Player Tracker
execute if entity @s[scores={sinceDealtDamage=600..}] unless entity @s[scores={class=16}] run function kitpvp:utility/internal/give-compass
execute if entity @s[scores={sinceDealtDamage=..600},nbt={Inventory:[{id:"minecraft:compass"}]}] unless entity @s[scores={class=16}] run clear @s minecraft:compass

# Give Suicide Item
execute if entity @s[scores={sinceDealtDamage=600..,sinceTakenDamage=600..}] run item replace entity @s inventory.22 with red_dye{display: {Name: '[{"text":"Drop to Suicide","italic":false}]', Lore: ['[{"text":"Use this if you are stuck.","italic":false,"color":"gray"}]']}}
execute if entity @s[scores={sinceDealtDamage=..600},nbt={Inventory:[{id:"minecraft:red_dye"}]}] run clear @s minecraft:red_dye
execute if entity @s[scores={sinceTakenDamage=..600},nbt={Inventory:[{id:"minecraft:red_dye"}]}] run clear @s minecraft:red_dye

# Resetting the player speed attribute so the class can set it again.
attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-0
