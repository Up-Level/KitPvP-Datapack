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
scoreboard players set crossbow-arrow-speed-multiplier settings 2

scoreboard objectives remove team
scoreboard objectives add team dummy

scoreboard objectives remove playerY
scoreboard objectives add playerY dummy

scoreboard objectives remove totalKills
scoreboard objectives add totalKills playerKillCount {"text":"Total Kills","color":"gold"}

scoreboard objectives remove totalDeaths
scoreboard objectives add totalDeaths deathCount {"text":"Total Deaths","color":"gold"}

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

scoreboard objectives remove crossbowsHeld
scoreboard objectives add crossbowsHeld dummy

scoreboard objectives remove arrowTime
scoreboard objectives add arrowTime dummy

scoreboard objectives remove killsSinceDeath
scoreboard objectives add killsSinceDeath playerKillCount

scoreboard objectives remove ArrowMotion0
scoreboard objectives remove ArrowMotion1
scoreboard objectives remove ArrowMotion2

scoreboard objectives add ArrowMotion0 dummy
scoreboard objectives add ArrowMotion1 dummy
scoreboard objectives add ArrowMotion2 dummy

scoreboard objectives remove UUID0
scoreboard objectives remove UUID1
scoreboard objectives remove UUID2
scoreboard objectives remove UUID3

scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy

scoreboard objectives remove ProjectileUUID0
scoreboard objectives remove ProjectileUUID1
scoreboard objectives remove ProjectileUUID2
scoreboard objectives remove ProjectileUUID3

scoreboard objectives add ProjectileUUID0 dummy
scoreboard objectives add ProjectileUUID1 dummy
scoreboard objectives add ProjectileUUID2 dummy
scoreboard objectives add ProjectileUUID3 dummy

# Binary Scoreboards (1 or 0)
scoreboard objectives remove dead
scoreboard objectives add dead deathCount

scoreboard objectives remove killBin
scoreboard objectives add killBin playerKillCount

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
team modify none seeFriendlyInvisibles false
team modify none collisionRule always

team remove red
team add red {"text":"Red","color":"red"}
team modify red friendlyFire false
team modify red deathMessageVisibility never
team modify red nametagVisibility hideForOtherTeams
team modify red seeFriendlyInvisibles true
team modify red collisionRule pushOtherTeams
team modify red color red

team remove blue
team add blue {"text":"Blue","color":"blue"}
team modify blue friendlyFire false
team modify blue deathMessageVisibility never
team modify blue nametagVisibility hideForOtherTeams
team modify blue seeFriendlyInvisibles true
team modify blue collisionRule pushOtherTeams
team modify blue color blue

team remove green
team add green {"text":"Green","color":"green"}
team modify green friendlyFire false
team modify green deathMessageVisibility never
team modify green nametagVisibility hideForOtherTeams
team modify green seeFriendlyInvisibles true
team modify green collisionRule pushOtherTeams
team modify green color green

team remove yellow
team add yellow {"text":"Yellow","color":"yellow"}
team modify yellow friendlyFire false
team modify yellow deathMessageVisibility never
team modify yellow nametagVisibility hideForOtherTeams
team modify yellow seeFriendlyInvisibles true
team modify yellow collisionRule pushOtherTeams
team modify yellow color yellow
