execute if score redPlayers gm_general >= one number if score bluePlayers gm_general matches 0 if score greenPlayers gm_general matches 0 if score yellowPlayers gm_general matches 0 run scoreboard players set winnerOfRound gm_general 1
execute if score bluePlayers gm_general >= one number if score redPlayers gm_general matches 0 if score greenPlayers gm_general matches 0 if score yellowPlayers gm_general matches 0 run scoreboard players set winnerOfRound gm_general 2
execute if score greenPlayers gm_general >= one number if score redPlayers gm_general matches 0 if score bluePlayers gm_general matches 0 if score yellowPlayers gm_general matches 0 run scoreboard players set winnerOfRound gm_general 3
execute if score yellowPlayers gm_general >= one number if score redPlayers gm_general matches 0 if score bluePlayers gm_general matches 0 if score greenPlayers gm_general matches 0 run scoreboard players set winnerOfRound gm_general 4

function kitpvp:gamemodes/203-elimination/203-new-round
