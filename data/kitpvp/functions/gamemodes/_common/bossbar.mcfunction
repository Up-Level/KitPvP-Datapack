# Add a bossbar for Time Remaining
bossbar remove 0
bossbar add 0 [{"text":"Time Remaining: ","color":"gold"},{"score":{"objective":"gm_general","name":"seconds"},"color":"gold"},{"text":" seconds","color":"gold"}]
bossbar set 0 players @a[scores={optIn=1}]
bossbar set 0 color blue
execute store result bossbar minecraft:0 max run scoreboard players get seconds gm_general
execute store result bossbar minecraft:0 value run scoreboard players get seconds gm_general
