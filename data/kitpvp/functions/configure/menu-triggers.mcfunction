scoreboard players enable @a menuTriggers

# OptIn control is 1 - 2
execute as @a if score @s menuTriggers matches 1 run scoreboard players reset @s optIn
execute as @a if score @s menuTriggers matches 2 run scoreboard players set @s optIn 1

# Start Gamemode is 3
execute as @a if score @s menuTriggers matches 3 run function kitpvp:configure/start-gamemode

# Map control is 101 - 199
execute as @a if score @s menuTriggers matches 101 run scoreboard players set map settings 1
execute as @a if score @s menuTriggers matches 102 run scoreboard players set map settings 2
execute as @a if score @s menuTriggers matches 103 run scoreboard players set map settings 3

# Gamemode control is 201 - 299
execute as @a if score @s menuTriggers matches 201 run scoreboard players set gamemode settings 1
execute as @a if score @s menuTriggers matches 202 run scoreboard players set gamemode settings 2
execute as @a if score @s menuTriggers matches 203 run scoreboard players set gamemode settings 3

execute as @a unless score @s menuTriggers matches 0 run scoreboard players set @s menuTriggers 0
