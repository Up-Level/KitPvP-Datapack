# See who won the round
execute if score redPlayers gm_general >= one number if score bluePlayers gm_general matches 0 if score greenPlayers gm_general matches 0 if score yellowPlayers gm_general matches 0 run scoreboard players set winnerOfRound gm_general 1
execute if score bluePlayers gm_general >= one number if score redPlayers gm_general matches 0 if score greenPlayers gm_general matches 0 if score yellowPlayers gm_general matches 0 run scoreboard players set winnerOfRound gm_general 2
execute if score greenPlayers gm_general >= one number if score redPlayers gm_general matches 0 if score bluePlayers gm_general matches 0 if score yellowPlayers gm_general matches 0 run scoreboard players set winnerOfRound gm_general 3
execute if score yellowPlayers gm_general >= one number if score redPlayers gm_general matches 0 if score bluePlayers gm_general matches 0 if score greenPlayers gm_general matches 0 run scoreboard players set winnerOfRound gm_general 4

# Add score to total
execute if score winnerOfRound gm_general matches 1 run scoreboard players add Red-Score gm_sidebar 1
execute if score winnerOfRound gm_general matches 2 run scoreboard players add Blue-Score gm_sidebar 1
execute if score winnerOfRound gm_general matches 3 run scoreboard players add Green-Score gm_sidebar 1
execute if score winnerOfRound gm_general matches 4 run scoreboard players add Yellow-Score gm_sidebar 1

scoreboard players set winnerOfRound gm_general 0

# Teleport Teams to the Map
execute if score map settings matches 1 run spreadplayers -1 -1 5 200 true @a[scores={optIn=1},team=!none]
execute if score map settings matches 2 run spreadplayers 1981 -21 5 100 true @a[scores={optIn=1},team=!none]
execute if score map settings matches 3 run spreadplayers 4000 35 5 200 true @a[scores={optIn=1},team=!none]
execute if score map settings matches 4 run spreadplayers 6000 0 5 30 under 67 true @a[scores={optIn=1},team=!none]
execute if score map settings matches 5 run spreadplayers 8000 0 5 100 true @a[scores={optIn=1},team=!none]

# Refresh players for next round
gamemode adventure @a[scores={optIn=1}]
function kitpvp:utility/delete-entities
execute as @a[scores={optIn=1}] run function kitpvp:utility/reset-player-scoreboards
scoreboard players set @a[scores={optIn=1}] respawn 0
scoreboard players set @a[scores={optIn=1}] gm_lives 1

say lol new round

# If a team has reached 3 points stop the game
execute if score Red-Score gm_sidebar = three number run function kitpvp:gamemodes/203-elimination/203-stop
execute if score Blue-Score gm_sidebar = three number run function kitpvp:gamemodes/203-elimination/203-stop
execute if score Green-Score gm_sidebar = three number run function kitpvp:gamemodes/203-elimination/203-stop
execute if score Yellow-Score gm_sidebar = three number run function kitpvp:gamemodes/203-elimination/203-stop
