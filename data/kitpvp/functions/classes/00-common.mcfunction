# Runs on all classes

# Give Player Tracker
execute if entity @s[scores={timeSinceCombat=600..}] unless entity @s[scores={class=18}] run function kitpvp:utility/internal/give-compass
execute if entity @s[scores={timeSinceCombat=..600},nbt={Inventory:[{id:"minecraft:compass"}]}] unless entity @s[scores={class=18}] run clear @s minecraft:compass

# Give Suicide Item
execute if entity @s[scores={timeSinceCombat=600..}] run replaceitem entity @s inventory.22 red_dye{display:{Name:'[{"text":"Drop to Suicide","italic":false}]',Lore:['[{"text":"Use this if you are stuck.","italic":false,"color":"gray"}]']}}
execute if entity @s[scores={timeSinceCombat=..600},nbt={Inventory:[{id:"minecraft:red_dye"}]}] run clear @s minecraft:red_dye