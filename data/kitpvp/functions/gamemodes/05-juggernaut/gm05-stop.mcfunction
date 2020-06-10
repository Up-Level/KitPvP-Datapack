# Juggernaut Gamemode Stop
execute if score players gm05-general = playersTeam gm05-general if score playersJuggernaut gm05-general matches 0 run scoreboard players set winner gm05-general 0
execute if score players gm05-general = playersJuggernaut gm05-general if score playersTeam gm05-general matches 0 run scoreboard players set winner gm05-general 1
execute if score ticks gm05-general matches 0 run scoreboard players set winner gm05-general 1

execute if score winner gm05-general matches 0 run title @a[scores={optIn=1}] title "The Attackers have Won!"
execute if score winner gm05-general matches 1 run title @a[scores={optIn=1}] title "The Juggernaut has Won!"

execute if score winner gm05-general matches 0 run scoreboard players add @a[team=juggernautTeam] wins 1
execute if score winner gm05-general matches 1 run scoreboard players add @a[team=juggernaut] wins 1

playsound minecraft:entity.firework_rocket.twinkle master @a[scores={optIn=1}]
playsound minecraft:ui.toast.challenge_complete master @a[scores={gm05-lives=1..}] ~ ~ ~ 1.25
scoreboard players set * killsSinceDeath 0
tp @a[scores={optIn=1}] @e[name="spawn",limit=1]
gamemode adventure @a[scores={optIn=1}]
clear @a[scores={optIn=1}]

scoreboard players set @a gm05-lives 1
scoreboard players reset @a[scores={gm05-juggernaut=1}] class
attribute @a[scores={gm05-juggernaut=1},limit=1] minecraft:generic.max_health base set 20
team join none @a[scores={optIn=1}]
scoreboard objectives setdisplay list wins
scoreboard objectives setdisplay sidebar optIn

scoreboard players set run gm05-general 0
scoreboard players set gamemode-running settings 0

gamerule fallDamage true
