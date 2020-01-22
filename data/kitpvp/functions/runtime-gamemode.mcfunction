execute as @a[scores={class=1,optIn=1}] run function kitpvp:classes/01-test
execute as @a[scores={class=2,optIn=1}] run function kitpvp:classes/02-scout
execute as @a[scores={class=3,optIn=1}] run function kitpvp:classes/03-bowspace
execute as @a[scores={class=4,optIn=1}] run function kitpvp:classes/04-swordspace
execute as @a[scores={class=5,optIn=1}] run function kitpvp:classes/05-legionnaire
execute as @a[scores={class=6,optIn=1}] run function kitpvp:classes/06-shieldbearer
execute as @a[scores={class=7,optIn=1}] run function kitpvp:classes/07-endermissionary
execute as @a[scores={class=8,optIn=1}] run function kitpvp:classes/08-hunter
execute as @a[scores={class=9,optIn=1}] run function kitpvp:classes/09-speedygonzales
execute as @a[scores={class=10,optIn=1}] run function kitpvp:classes/10-gunner
execute as @a[scores={class=11,optIn=1}] run function kitpvp:classes/11-sniper

execute if score map settings matches 1 run function kitpvp:maps/01-four-corners
execute if score map settings matches 2 run function kitpvp:maps/02-sheerdrop
execute if score map settings matches 3 run function kitpvp:maps/03-cargo

execute if score run gm01-general matches 1 run function kitpvp:gamemodes/01-lives-s/gm01-runtime
execute if score run gm02-general matches 1 run function kitpvp:gamemodes/02-lives-t/gm02-runtime

execute if score gamemode-running settings matches 1 if score map settings matches 1 at @e[name=spawn] run spreadplayers -1 -1 30 200 false @a[scores={optIn=1},distance=..50]
execute if score gamemode-running settings matches 1 if score map settings matches 2 at @e[name=spawn] run spreadplayers 1981 -21 15 100 false @a[scores={optIn=1},distance=..50]
execute if score gamemode-running settings matches 1 if score map settings matches 3 at @e[name=spawn] run spreadplayers 4000 35 30 200 false @a[scores={optIn=1},distance=..50]
