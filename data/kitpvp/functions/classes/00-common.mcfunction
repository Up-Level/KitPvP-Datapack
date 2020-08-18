# Runs on all classes

#Compass
execute if entity @s[tag=dontgivemecompassifincombatlol] unless entity @s[scores={class=18}] run function kitpvp:utility/internal/give-compass
