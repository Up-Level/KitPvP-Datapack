scoreboard objectives remove cooldown
scoreboard objectives add cooldown dummy
scoreboard players set chef-fork cooldown 100
scoreboard players set rocket-boots cooldown 150
scoreboard players set spear cooldown 80
scoreboard players set boat cooldown 200

scoreboard objectives remove cdChefFork
scoreboard objectives add cdChefFork dummy

scoreboard objectives remove cdRocketBoots
scoreboard objectives add cdRocketBoots dummy

scoreboard objectives remove cdSpear
scoreboard objectives add cdSpear dummy

scoreboard objectives remove cdBoat
scoreboard objectives add cdBoat dummy

scoreboard objectives remove rocketBootsTimer
scoreboard objectives add rocketBootsTimer dummy

execute as @a run function kitpvp:utility/reset-player-scoreboards
