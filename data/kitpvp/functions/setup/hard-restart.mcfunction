# Hard Restart Resets everything, coordinate armor stands will have to be moved again.
tellraw @a {"text":"KitPvP has been hard restarted. Coordinate armor stands will need to be moved again and all scoreboards have been reset.","color":"gold"}
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

scoreboard objectives remove playerY
scoreboard objectives add playerY dummy

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

scoreboard objectives remove crossbowsHeld
scoreboard objectives add crossbowsHeld dummy

scoreboard objectives remove arrowTime
scoreboard objectives add arrowTime dummy

scoreboard objectives remove survivalistLevel
scoreboard objectives add survivalistLevel playerKillCount


# Binary Scoreboards (1 or 0)
scoreboard objectives remove dead
scoreboard objectives add dead deathCount

scoreboard objectives remove respawn
scoreboard objectives add respawn dummy

scoreboard objectives remove crouch
scoreboard objectives add crouch dummy

# Add Coordinate Stands
kill @e[type=minecraft:armor_stand,nbt={Marker:1b}]

execute at @p run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"spawn\"}"}
execute at @p run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"active-map\"}"}

execute at @p run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"map-01\"}"}
execute at @p run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"map-02\"}"}
execute at @p run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"map-03\"}"}

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
