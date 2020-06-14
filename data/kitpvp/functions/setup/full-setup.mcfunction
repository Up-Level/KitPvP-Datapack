# Hard Restart Resets everything, coordinate armor stands will have to be moved again.
tellraw @a {"text":"KitPvP Datapack has been Fully Setup.","color":"gold"}

function kitpvp:setup/base-setup

# Gamerules
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule mobGriefing false
gamerule randomTickSpeed 0
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule doImmediateRespawn true

# Setup Wins scoreboard (not done in scoreboard-setup to avoid resetting wins while testing)
scoreboard objectives remove wins
scoreboard objectives add wins dummy

# Add Coordinate Stands
kill @e[type=minecraft:armor_stand,nbt={Marker:1b}]

summon armor_stand 0 64 0 {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"spawn\"}"}
summon armor_stand 0 64 0 {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"active-map\"}"}

summon armor_stand 0 64 0 {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"map-01\"}"}
summon armor_stand 0 64 0 {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"map-02\"}"}
summon armor_stand 0 64 0 {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"map-03\"}"}
summon armor_stand 0 64 0 {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"map-04\"}"}
