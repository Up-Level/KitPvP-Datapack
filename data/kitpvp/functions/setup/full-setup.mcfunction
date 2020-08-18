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

difficulty normal

# Setup Wins scoreboard (not done in scoreboard-setup to avoid resetting wins while testing)
scoreboard objectives remove wins
scoreboard objectives add wins dummy

# Add Coordinate Stands
kill @e[type=minecraft:armor_stand,nbt={Marker:1b}]

summon armor_stand 0 64 0 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"spawn"}'}
summon armor_stand -48 109 2082 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"spectate-spot"}'}

summon armor_stand 0 64 0 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-01"}'}
summon armor_stand 0 64 0 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-02"}'}
summon armor_stand 0 64 0 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-03"}'}
summon armor_stand 0 64 0 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-04"}'}
summon armor_stand 0 64 0 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-05"}'}
summon armor_stand 0 64 0 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-06"}'}
summon armor_stand 0 64 0 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-07"}'}