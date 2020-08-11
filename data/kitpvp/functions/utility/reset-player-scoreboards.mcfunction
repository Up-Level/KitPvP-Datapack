# Reset Chef Scoreboards
scoreboard players set @s cdChefFork 0

# Reset Rocket Boots Scoreboards
scoreboard players set @s cdRocketBoots 0
scoreboard players set @s rocketBootsTimer 0
scoreboard players set @s canUseElytra 0

# Reset Spearman Scoreboards
scoreboard players set @s cdSpear 0

# Reset Pirate Scoreboards
scoreboard players set @s cdBoat 0

# Other Scorebaords
scoreboard players set @s crouchTime 0
scoreboard players set @s killsSinceDeath 0

scoreboard players set @s dropTrident 0
scoreboard players set @s throwTrident 0

execute if entity @s[scores={class=22}] run function kitpvp:utility/destroy-boat
