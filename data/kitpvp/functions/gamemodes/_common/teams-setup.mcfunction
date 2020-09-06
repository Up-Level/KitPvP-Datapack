# Initiate Common Teams Gamemode Scoreboards
scoreboard players set redPlayers gm_general 0
scoreboard players set bluePlayers gm_general 0
scoreboard players set greenPlayers gm_general 0
scoreboard players set yellowPlayers gm_general 0

scoreboard players set redKills gm_general 0
scoreboard players set blueKills gm_general 0
scoreboard players set greenKills gm_general 0
scoreboard players set yellowKills gm_general 0

# Put non-team players on the team with the lowest amount of players (that isn't 0)
scoreboard players set lastTeamChoice team 0
execute as @a[team=none,scores={optIn=1},sort=random] run function kitpvp:utility/internal/join-smallest-team
