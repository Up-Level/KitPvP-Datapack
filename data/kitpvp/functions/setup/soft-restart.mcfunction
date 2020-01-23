# Soft Restart Resets scoreboards but nothing else.
tellraw @a {"text":"KitPvP has been soft restarted. Scoreboards have been reset but armor stands are untouched.","color":"gold"}
playsound minecraft:block.note_block.pling master @a

# Integer Scoreboards
scoreboard objectives remove class
scoreboard objectives add class dummy

scoreboard objectives remove settings
scoreboard objectives add settings dummy
scoreboard players set map settings 0
scoreboard players set gamemode settings 0
scoreboard players set gamemode-bin settings 0
scoreboard players set gamemode-running settings 0

scoreboard objectives remove team
scoreboard objectives add team dummy

scoreboard objectives remove totalKills
scoreboard objectives add totalKills playerKillCount {"text":"Total Kills","color":"gold"}

scoreboard objectives remove totalDeaths
scoreboard objectives add totalDeaths deathCount {"text":"Total Deaths","color":"gold"}

scoreboard objectives remove wins
scoreboard objectives add wins dummy {"text":"Wins","color":"gold"}
scoreboard objectives setdisplay list wins

scoreboard objectives remove optIn
scoreboard objectives add optIn dummy {"text":"Ready","color":"gold"}
scoreboard objectives setdisplay sidebar optIn

scoreboard objectives remove ready
scoreboard objectives add ready dummy

scoreboard objectives remove menuTriggers
scoreboard objectives add menuTriggers trigger

scoreboard objectives remove classTriggers
scoreboard objectives add classTriggers trigger

scoreboard objectives remove respawnTimer
scoreboard objectives add respawnTimer dummy

# Binary Scoreboards (1 or 0)
scoreboard objectives remove dead
scoreboard objectives add dead deathCount

scoreboard objectives remove respawn
scoreboard objectives add respawn dummy

scoreboard objectives remove crouch
scoreboard objectives add crouch dummy

# Add Teams
team remove none
team add none {"text":"None"}
team modify none friendlyFire true
team modify none deathMessageVisibility never
team modify none nametagVisibility never

team remove red
team add red {"text":"Red","color":"red"}
team modify red friendlyFire false
team modify red deathMessageVisibility hideForOtherTeams
team modify red nametagVisibility hideForOtherTeams
team modify red seeFriendlyInvisibles true
team modify red color red

team remove blue
team add blue {"text":"Blue","color":"blue"}
team modify blue friendlyFire false
team modify blue deathMessageVisibility hideForOtherTeams
team modify blue nametagVisibility hideForOtherTeams
team modify blue seeFriendlyInvisibles true
team modify blue color blue

team remove green
team add green {"text":"Green","color":"green"}
team modify green friendlyFire false
team modify green deathMessageVisibility hideForOtherTeams
team modify green nametagVisibility hideForOtherTeams
team modify green seeFriendlyInvisibles true
team modify green color green

team remove yellow
team add yellow {"text":"Yellow","color":"yellow"}
team modify yellow friendlyFire false
team modify yellow deathMessageVisibility hideForOtherTeams
team modify yellow nametagVisibility hideForOtherTeams
team modify yellow seeFriendlyInvisibles true
team modify yellow color yellow
