# Runs on all classes

#Compass
execute if entity @s[scores={timeSinceCombat=600..}] unless entity @s[scores={class=18}] run function kitpvp:utility/internal/give-compass
