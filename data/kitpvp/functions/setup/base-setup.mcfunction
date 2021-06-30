# Generic Setup to be ran in other restart functions.

tag @a remove vip

# Integer Scoreboards
scoreboard objectives remove class
scoreboard objectives add class dummy

scoreboard objectives remove classMode
scoreboard objectives add classMode dummy

scoreboard objectives remove resource
scoreboard objectives add resource dummy

scoreboard objectives remove resourceTime
scoreboard objectives add resourceTime dummy

scoreboard objectives add settings dummy
scoreboard players set map settings 0
scoreboard players set gamemode settings 0
scoreboard players set gamemodeBin settings 0
scoreboard players set gamemodeRunning settings 0
scoreboard players set crossbowArrowSpeedMultiplier settings 1
scoreboard players set fishingRodSpeedMultiplier settings 2
scoreboard players set spawnDistance settings 15
# ^15 blocks

scoreboard objectives remove number
scoreboard objectives add number dummy
scoreboard players set negative-twenty number -20
scoreboard players set negative-one number -1
scoreboard players set zero number 0
scoreboard players set one number 1
scoreboard players set three number 3
scoreboard players set twelve number 12
scoreboard players set twenty number 20

function kitpvp:setup/cooldowns-setup

scoreboard objectives setdisplay list wins

scoreboard objectives remove gamemodeStart
scoreboard objectives add gamemodeStart dummy

scoreboard objectives remove rbFizzleTimer
scoreboard objectives add rbFizzleTimer dummy

scoreboard objectives remove canUseElytra
scoreboard objectives add canUseElytra dummy

scoreboard objectives remove team
scoreboard objectives add team dummy

scoreboard objectives remove playerX
scoreboard objectives remove playerY
scoreboard objectives remove playerZ
scoreboard objectives add playerX dummy
scoreboard objectives add playerY dummy
scoreboard objectives add playerZ dummy

scoreboard objectives remove playerAliveX
scoreboard objectives remove playerAliveY
scoreboard objectives remove playerAliveZ
scoreboard objectives add playerAliveX dummy
scoreboard objectives add playerAliveY dummy
scoreboard objectives add playerAliveZ dummy

scoreboard objectives remove playerAliveRot0
scoreboard objectives remove playerAliveRot1
scoreboard objectives add playerAliveRot0 dummy
scoreboard objectives add playerAliveRot1 dummy

scoreboard objectives remove totalKills
scoreboard objectives add totalKills playerKillCount {"text":"Total Kills","color":"gold"}

scoreboard objectives remove totalDeaths
scoreboard objectives add totalDeaths deathCount {"text":"Total Deaths","color":"gold"}

scoreboard objectives remove optIn
scoreboard objectives add optIn dummy {"text":"Ready","color":"gold"}
scoreboard objectives setdisplay sidebar optIn

scoreboard objectives remove throwTrident
scoreboard objectives add throwTrident dummy

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

scoreboard objectives remove dmgDealtAlive
scoreboard objectives add dmgDealtAlive minecraft.custom:minecraft.damage_dealt

scoreboard objectives remove classProjectile
scoreboard objectives add classProjectile dummy

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

scoreboard objectives remove ProjectileTeam
scoreboard objectives add ProjectileTeam dummy

scoreboard objectives remove compareUUID0
scoreboard objectives remove compareUUID0
scoreboard objectives remove compareUUID0
scoreboard objectives remove compareUUID0

scoreboard objectives add compareUUID0 dummy
scoreboard objectives add compareUUID1 dummy
scoreboard objectives add compareUUID2 dummy
scoreboard objectives add compareUUID3 dummy

scoreboard objectives remove crouchTime
scoreboard objectives add crouchTime minecraft.custom:minecraft.sneak_time

scoreboard objectives remove sinceDealtDamage
scoreboard objectives add sinceDealtDamage dummy

scoreboard objectives remove sinceTakenDamage
scoreboard objectives add sinceTakenDamage dummy

scoreboard objectives remove timeAlive
scoreboard objectives add timeAlive dummy

scoreboard objectives remove tridentCount
scoreboard objectives add tridentCount dummy

scoreboard objectives remove hadTridentCount
scoreboard objectives add hadTridentCount dummy

scoreboard objectives remove blockTime
scoreboard objectives add blockTime dummy

scoreboard objectives remove temp
scoreboard objectives add temp dummy

scoreboard objectives remove motionO0
scoreboard objectives remove motionO1
scoreboard objectives remove motionO2

scoreboard objectives add motionO0 dummy
scoreboard objectives add motionO1 dummy
scoreboard objectives add motionO2 dummy

# Binary Scoreboards (1 or 0)
scoreboard objectives remove dead
scoreboard objectives add dead deathCount

scoreboard objectives remove killBin
scoreboard objectives add killBin playerKillCount

scoreboard objectives remove respawn
scoreboard objectives add respawn dummy

scoreboard objectives remove crouchBin
scoreboard objectives add crouchBin minecraft.custom:minecraft.sneak_time

scoreboard objectives remove jumpBin
scoreboard objectives add jumpBin minecraft.custom:minecraft.jump

scoreboard objectives remove dropTrident
scoreboard objectives add dropTrident minecraft.dropped:minecraft.trident

scoreboard objectives remove playerLeft
scoreboard objectives add playerLeft minecraft.custom:minecraft.leave_game

scoreboard objectives remove giveClass
scoreboard objectives add giveClass dummy

scoreboard objectives remove inLiquid
scoreboard objectives add inLiquid dummy

scoreboard objectives remove carrotStickBin
scoreboard objectives add carrotStickBin minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives remove fungusStickBin
scoreboard objectives add fungusStickBin minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard objectives remove joinBin
scoreboard objectives add joinBin minecraft.custom:minecraft.leave_game

scoreboard objectives remove damageDealtBin
scoreboard objectives add damageDealtBin minecraft.custom:minecraft.damage_dealt

scoreboard objectives remove damageTakenBin
scoreboard objectives add damageTakenBin minecraft.custom:minecraft.damage_taken

scoreboard objectives remove seeEffects
scoreboard objectives add seeEffects dummy
scoreboard players set * seeEffects 1

scoreboard objectives remove dropRedDyeBin
scoreboard objectives add dropRedDyeBin minecraft.dropped:red_dye

scoreboard objectives remove usedBowBin
scoreboard objectives add usedBowBin minecraft.used:bow

scoreboard objectives remove usedCrossbowBin
scoreboard objectives add usedCrossbowBin minecraft.used:crossbow

scoreboard objectives remove usedTridentBin
scoreboard objectives add usedTridentBin minecraft.used:minecraft.trident

scoreboard objectives remove usedTotemBin
scoreboard objectives add usedTotemBin minecraft.used:minecraft.totem_of_undying

scoreboard objectives add opped dummy

scoreboard objectives remove debug
scoreboard objectives add debug dummy

scoreboard players set UpLevel debug 1
scoreboard players set TetTheGreedy debug 1

# Reset Attributes
execute as @a run attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-0

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

team remove uninfected
team add uninfected {"text":"Uninfected"}
team modify uninfected friendlyFire false
team modify uninfected deathMessageVisibility never
team modify uninfected nametagVisibility hideForOtherTeams
team modify uninfected seeFriendlyInvisibles true
team modify uninfected collisionRule pushOtherTeams

team remove infected
team add infected {"text":"Infected","color":"dark_green"}
team modify infected friendlyFire false
team modify infected deathMessageVisibility never
team modify infected nametagVisibility hideForOtherTeams
team modify infected seeFriendlyInvisibles true
team modify infected collisionRule pushOtherTeams
team modify infected color dark_green

# Make all players run the on-join function to avoid issues.
scoreboard players set @a joinBin 1

function kitpvp:maps/forceload-all
kill @e[name="point-corner"]
kill @e[name="active-point"]
kill @e[tag=SpawnPoint]
function kitpvp:maps/unforceload-all

bossbar set 0 players
