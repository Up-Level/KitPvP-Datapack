# Runs when the Datapack is reloaded.

execute unless score fullSetup settings matches 1 run function kitpvp:setup/full-setup
execute if score fullSetup settings matches 1 run function kitpvp:setup/base-setup

tellraw @a {"text":"KitPvP Datapack has Reloaded.","color":"gold"}
playsound minecraft:block.note_block.pling master @a 0 65 1000 10000 1 1
