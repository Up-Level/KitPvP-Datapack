# Runs when the Datapack is reloaded.

execute if score fullSetup settings matches 1 run function kitpvp:setup/base-setup
execute unless score fullSetup settings matches 1 run function kitpvp:setup/full-setup

tellraw @a {"text":"KitPvP Datapack has Reloaded.","color":"gold"}
