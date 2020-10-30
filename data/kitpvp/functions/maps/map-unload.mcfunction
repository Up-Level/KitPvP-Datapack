kill @e[type=armor_stand,tag=SpawnPoint]

execute if score map settings matches 1 positioned 0 100 0 run function kitpvp:maps/01-four-corners/unload
execute if score map settings matches 2 positioned 2000 100 0 run function kitpvp:maps/02-sheerdrop/unload
execute if score map settings matches 3 positioned 4000 100 0 run function kitpvp:maps/03-cargo/unload
execute if score map settings matches 4 positioned 6000 100 0 run function kitpvp:maps/04-arena/unload
execute if score map settings matches 5 positioned 8000 100 0 run function kitpvp:maps/05-survival-beginnings/unload
execute if score map settings matches 6 positioned 9000 100 0 run function kitpvp:maps/06-temple/unload
execute if score map settings matches 7 positioned 10000 100 0 run function kitpvp:maps/07-enchanted-forest/unload
execute if score map settings matches 8 positioned 12000 64 0 run function kitpvp:maps/08-gulag/unload
execute if score map settings matches 9 positioned 14000 64 0 run function kitpvp:maps/09-water-treatment/unload
execute if score map settings matches 10 positioned 18000 64 0 run function kitpvp:maps/10-house/unload
execute if score map settings matches 11 positioned 20000 64 0 run function kitpvp:maps/11-kitpvp-classic/unload
execute if score map settings matches 12 positioned 21000 64 0 run function kitpvp:maps/12-hangar/unload
