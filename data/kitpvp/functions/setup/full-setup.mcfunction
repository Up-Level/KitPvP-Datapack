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
function kitpvp:utility/internal/forceload/load-all-maps
kill @e[type=minecraft:armor_stand,nbt={Marker:1b}]
function kitpvp:utility/internal/forceload/unload-all-maps

summon armor_stand 0.5 100.00 2000.5 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"spawn"}'}
summon armor_stand -48 109 2082 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"spectate-spot"}'}
summon armor_stand -48 111 2082 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"Enter to Spectate."}',CustomNameVisible:1b}

summon armor_stand -0.5 125.00 -0.5 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-01"}'}
summon armor_stand 1984.5 93.00 -17.5 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-02"}'}
summon armor_stand 4000.5 81.00 37.0 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-03"}'}
summon armor_stand 6000.5 64.00 0.5 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-04"}'}
summon armor_stand 7975.5 66.00 8.5 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-05"}'}
summon armor_stand 9000.5 72.00 0.5 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-06"}'}
summon armor_stand 10045.5 78.00 24.5 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-07"}'}
summon armor_stand 11986.5 64.00 0.5 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-08"}'}
summon armor_stand 14023.5 53.00 15.5 {Invisible:1,NoGravity:1,Marker:1,CustomName:'{"text":"point-09"}'}
