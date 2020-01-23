# Lives Gamemode Setup
execute if score map settings matches 1 run spreadplayers -1 -1 30 200 false @a[scores={optIn=1}]
execute if score map settings matches 2 run spreadplayers 1981 -21 15 100 false @a[scores={optIn=1}]
execute if score map settings matches 3 run spreadplayers 4000 35 30 200 false @a[scores={optIn=1}]
tellraw @a[scores={optIn=1}] {"text":"This gamemode is Lives. Everyone has 3 lives, and the last team standing wins.","color":"gold"}
gamemode adventure @a[scores={optIn=1}]

scoreboard players set @a[scores={optIn=1}] respawn 0

scoreboard objectives remove gm02-lives
scoreboard objectives add gm02-lives dummy
scoreboard players set @a[scores={optIn=1}] gm02-lives 3
scoreboard objectives setdisplay list gm02-lives

scoreboard objectives remove gm02-kills
scoreboard objectives add gm02-kills playerKillCount {"text":"Kills","color":"gold"}
scoreboard objectives setdisplay sidebar gm02-kills

scoreboard objectives remove gm02-deaths
scoreboard objectives add gm02-deaths deathCount {"text":"Deaths","color":"gold"}

scoreboard objectives remove gm02-general
scoreboard objectives add gm02-general dummy
scoreboard players set players gm02-general 0
scoreboard players set players-red gm02-general 0
scoreboard players set players-blue gm02-general 0
scoreboard players set players-green gm02-general 0
scoreboard players set players-yellow gm02-general 0
scoreboard players set run gm02-general 1
scoreboard players set one gm02-general 1
scoreboard players set winner gm02-general 0

scoreboard players set gamemode-running settings 1
scoreboard players set gamemode-bin settings 0
