scoreboard players enable @a menuTriggers

# Opt In settings
execute as @a if score @s menuTriggers matches 1 run scoreboard players reset @s optIn
execute as @a if score @s menuTriggers matches 2 run scoreboard players set @s optIn 1

# Select Teams
execute as @a if score @s menuTriggers matches 4 run team join red
execute as @a if score @s menuTriggers matches 5 run team join blue
execute as @a if score @s menuTriggers matches 6 run team join green
execute as @a if score @s menuTriggers matches 7 run team join yellow
execute as @a if score @s menuTriggers matches 8 run team join none

# Set SeeEffects setting
execute as @a if score @s menuTriggers matches 9 run scoreboard players set @s seeEffects 0
execute as @a if score @s menuTriggers matches 10 run scoreboard players set @s seeEffects 1

execute as @a unless score @s menuTriggers matches 0 run scoreboard players set @s menuTriggers 0
