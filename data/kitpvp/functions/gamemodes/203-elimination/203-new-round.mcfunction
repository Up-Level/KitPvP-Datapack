# Add score to total
execute if score winnerOfRound gm_general matches 1 run scoreboard players add Red-Score gm_sidebar 1
execute if score winnerOfRound gm_general matches 2 run scoreboard players add Blue-Score gm_sidebar 1
execute if score winnerOfRound gm_general matches 3 run scoreboard players add Green-Score gm_sidebar 1
execute if score winnerOfRound gm_general matches 4 run scoreboard players add Yellow-Score gm_sidebar 1

execute if score winnerOfRound gm_general matches 1 run tellraw @a[scores={optIn=1}] [{"text":"Red Team ","color":"red"},{"text":"has won the round!","color":"gold"}]
execute if score winnerOfRound gm_general matches 2 run tellraw @a[scores={optIn=1}] [{"text":"Blue Team ","color":"blue"},{"text":"has won the round!","color":"gold"}]
execute if score winnerOfRound gm_general matches 3 run tellraw @a[scores={optIn=1}] [{"text":"Green Team ","color":"green"},{"text":"has won the round!","color":"gold"}]
execute if score winnerOfRound gm_general matches 4 run tellraw @a[scores={optIn=1}] [{"text":"Yellow Team ","color":"yellow"},{"text":"has won the round!","color":"gold"}]

scoreboard players set winnerOfRound gm_general 0

kill @e[name="point-corner"]
kill @e[name="active-point"]

# Teleport Teams to the Map
function kitpvp:utility/internal/map-teleport/4-teams

function kitpvp:utility/internal/delete-entities

scoreboard players set ticks gm_general 3000
bossbar set 0 color blue
bossbar set 0 max 150
bossbar set 0 value 150

# Refresh players for next round
scoreboard players set @a[scores={optIn=1}] respawn 1
scoreboard players set @a[scores={optIn=1}] respawnTimer 200
scoreboard players set @a[scores={optIn=1}] gm_lives 1
gamemode adventure @a[scores={optIn=1}]
clear @a[scores={optIn=1}]
effect clear @a[scores={optIn=1}]
execute as @a[scores={optIn=1}] run function kitpvp:utility/internal/reset-player-scoreboards

playsound minecraft:block.note_block.bit master @a[scores={optIn=1}] 0 65 1000 1000000 2 1
tellraw @a[scores={optIn=1}] {"text":"A new Round is starting...","color":"gold"}

# If a team has reached 3 points stop the game
execute if score Red-Score gm_sidebar = three number run function kitpvp:gamemodes/203-elimination/203-stop
execute if score Blue-Score gm_sidebar = three number run function kitpvp:gamemodes/203-elimination/203-stop
execute if score Green-Score gm_sidebar = three number run function kitpvp:gamemodes/203-elimination/203-stop
execute if score Yellow-Score gm_sidebar = three number run function kitpvp:gamemodes/203-elimination/203-stop
