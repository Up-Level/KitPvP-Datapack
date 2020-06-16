# Juggernaut Gamemode Stop
execute if score players gm_general = playersTeam gm_general if score playersJuggernaut gm_general matches 0 run scoreboard players set winner gm_general 0
execute if score players gm_general = playersJuggernaut gm_general if score playersTeam gm_general matches 0 run scoreboard players set winner gm_general 1
execute if score ticks gm_general matches 0 run scoreboard players set winner gm_general 2

execute if score winner gm_general matches 0 run title @a[scores={optIn=1}] title "The Attackers have Won!"
execute if score winner gm_general matches 1 run title @a[scores={optIn=1}] title "The Juggernaut has Won!"
execute if score winner gm_general matches 2 run title @a[scores={optIn=1}] title "The Game was a Draw."

execute if score winner gm_general matches 0 run scoreboard players add @a[team=juggernautTeam] wins 1
execute if score winner gm_general matches 1 run scoreboard players add @a[team=juggernaut] wins 1

playsound minecraft:ui.toast.challenge_complete master @a[scores={gm_lives=1..}] 0 65 1000 1 1 1
playsound minecraft:hostile.oryx_death player @a[scores={optIn=1}] 0 65 1000 1 1 1

team join none @a[scores={optIn=1}]

scoreboard players set @a[scores={gm_juggernaut=1}] class 6
attribute @a[scores={gm_juggernaut=1},limit=1] minecraft:generic.max_health base set 20
attribute @a[scores={gm_juggernaut=1},limit=1] minecraft:generic.knockback_resistance base set 0

scoreboard players set run gm_general 0
function kitpvp:gamemodes/_common/stop
