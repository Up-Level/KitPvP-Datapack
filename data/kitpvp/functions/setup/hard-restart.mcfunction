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
scoreboard players set crossbow-arrow-speed-multiplier settings 2

scoreboard objectives remove cooldown
scoreboard objectives add cooldown dummy
scoreboard players set chef-fork cooldown 100

scoreboard objectives remove number
scoreboard objectives add number dummy
scoreboard players set one number 1
scoreboard players set twelve number 12
scoreboard players set twenty number 20

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

scoreboard objectives remove throwTrident
scoreboard objectives add throwTrident dummy

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

scoreboard objectives remove classProjectile
scoreboard objectives add classProjectile dummy

scoreboard objectives remove chef-fork
scoreboard objectives add chef-fork dummy

scoreboard objectives remove projMotion0
scoreboard objectives remove projMotion1
scoreboard objectives remove projMotion2

scoreboard objectives add projMotion0 dummy
scoreboard objectives add projMotion1 dummy
scoreboard objectives add projMotion2 dummy

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

scoreboard objectives remove dropTrident
scoreboard objectives add dropTrident minecraft.dropped:minecraft.trident

scoreboard objectives remove hadTrident
scoreboard objectives add hadTrident dummy

scoreboard objectives remove playerLeft
scoreboard objectives add playerLeft minecraft.custom:minecraft.leave_game

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

team remove juggernautTeam
team add juggernautTeam {"text":"Juggernaut Team"}
team modify juggernautTeam friendlyFire false
team modify juggernautTeam deathMessageVisibility never
team modify juggernautTeam nametagVisibility hideForOtherTeams
team modify juggernautTeam seeFriendlyInvisibles true
team modify juggernautTeam collisionRule pushOtherTeams

team remove juggernaut
team add juggernaut {"text":"Juggernaut","color":"black"}
team modify juggernaut friendlyFire false
team modify juggernaut deathMessageVisibility never
team modify juggernaut nametagVisibility hideForOtherTeams
team modify juggernaut seeFriendlyInvisibles true
team modify juggernaut collisionRule pushOtherTeams
team modify juggernaut color black
