# Runs on all classes

#Compass
execute if entity @s[scores={timeSinceCombat=600..}] unless entity @s[scores={class=18}] run function kitpvp:utility/internal/give-compass
execute if entity @s[scores={timeSinceCombat=..600},nbt={Inventory:[{id:"minecraft:compass"}]}] unless entity @s[scores={class=18}] run clear @s minecraft:compass
