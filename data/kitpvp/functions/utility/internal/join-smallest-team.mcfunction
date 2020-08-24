tellraw @a[scores={debug=1}] {"selector":"@s"}

# Get number of players currently on a team
execute store result score redPlayers team if entity @e[team=red,scores={optIn=1}]
execute store result score bluePlayers team if entity @e[team=blue,scores={optIn=1}]
execute store result score greenPlayers team if entity @e[team=green,scores={optIn=1}]
execute store result score yellowPlayers team if entity @e[team=yellow,scores={optIn=1}]

# Find which team has the least players
scoreboard players set lowestTeamCount team 1
execute if score redPlayers team > zero number run scoreboard players operation lowestTeamCount team < redPlayers team
execute if score bluePlayers team > zero number run scoreboard players operation lowestTeamCount team < bluePlayers team
execute if score greenPlayers team > zero number run scoreboard players operation lowestTeamCount team < greenPlayers team
execute if score yellowPlayers team > zero number run scoreboard players operation lowestTeamCount team < yellowPlayers team

# The team with least players will be the one which now has a count of 0
scoreboard players operation redPlayers team -= lowestTeamCount team
scoreboard players operation bluePlayers team -= lowestTeamCount team
scoreboard players operation greenPlayers team -= lowestTeamCount team
scoreboard players operation yellowPlayers team -= lowestTeamCount team

<<<<<<< HEAD
scoreboard players set teamChoice team 0
=======
# Set team to the one with the least players
execute if score redPlayers team matches 0 run scoreboard players set teamChoice team 1
execute if score bluePlayers team matches 0 run scoreboard players set teamChoice team 2
execute if score greenPlayers team matches 0 run scoreboard players set teamChoice team 3
execute if score yellowPlayers team matches 0 run scoreboard players set teamChoice team 4
>>>>>>> f053b43575178d5dedea8dea42eb75b265d56857

# If all teams have the same amount of players, join red
execute if score teamChoice team matches 0 if score redPlayers team > zero number if score bluePlayers team > zero number if score greenPlayers team > zero number if score yellowPlayers team > zero number run scoreboard players set teamChoice team 1

# If all teams have no players, join red
execute if score teamChoice team matches 0 if score redPlayers team < zero number if score bluePlayers team < zero number if score greenPlayers team < zero number if score yellowPlayers team < zero number run scoreboard players set teamChoice team 1

# If only red has players, join blue
execute if score teamChoice team matches 0 if score redPlayers team = zero number if score bluePlayers team < zero number if score greenPlayers team < zero number if score yellowPlayers team < zero number run scoreboard players set teamChoice team 2

# If only other tea,s pn;y have 1, join red
execute if score teamChoice team matches 0 if score redPlayers team < zero number if score bluePlayers team = zero number if score greenPlayers team < zero number if score yellowPlayers team < zero number run scoreboard players set teamChoice team 1
execute if score teamChoice team matches 0 if score redPlayers team < zero number if score bluePlayers team < zero number if score greenPlayers team = zero number if score yellowPlayers team < zero number run scoreboard players set teamChoice team 1
execute if score teamChoice team matches 0 if score redPlayers team < zero number if score bluePlayers team < zero number if score greenPlayers team < zero number if score yellowPlayers team = zero number run scoreboard players set teamChoice team 1

# Set team to the one with the least players
execute if score teamChoice team matches 0 if score redPlayers team matches 0 run scoreboard players set teamChoice team 1
execute if score teamChoice team matches 0 if score bluePlayers team matches 0 run scoreboard players set teamChoice team 2
execute if score teamChoice team matches 0 if score greenPlayers team matches 0 run scoreboard players set teamChoice team 3
execute if score teamChoice team matches 0 if score yellowPlayers team matches 0 run scoreboard players set teamChoice team 4

#tellraw @a[scores={debug=1}] {"score":{"name":"lastTeamChoice","objective":"team"}}
tellraw @a[scores={debug=1}] {"score":{"name":"teamChoice","objective":"team"}}

# Set Teams
execute if score teamChoice team matches 1 run team join red @s
execute if score teamChoice team matches 2 run team join blue @s
execute if score teamChoice team matches 3 run team join green @s
execute if score teamChoice team matches 4 run team join yellow @s
