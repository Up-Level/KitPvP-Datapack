# Teleport Teams to the Map
execute if score map settings matches 1 run spreadplayers -1 -1 5 200 true @a[scores={optIn=1},team=!none]
execute if score map settings matches 2 run spreadplayers 1981 -21 5 100 true @a[scores={optIn=1},team=!none]
execute if score map settings matches 3 run spreadplayers 4000 35 5 200 true @a[scores={optIn=1},team=!none]
execute if score map settings matches 4 run spreadplayers 6000 0 5 30 under 67 true @a[scores={optIn=1},team=!none]
execute if score map settings matches 5 run spreadplayers 8000 0 5 100 true @a[scores={optIn=1},team=!none]

# Initiate Common Teams Gamemode Scoreboards
scoreboard players set redPlayers gm_general 0
scoreboard players set bluePlayers gm_general 0
scoreboard players set greenPlayers gm_general 0
scoreboard players set yellowPlayers gm_general 0

scoreboard players set redKills gm_general 0
scoreboard players set blueKills gm_general 0
scoreboard players set greenKills gm_general 0
scoreboard players set yellowKills gm_general 0
