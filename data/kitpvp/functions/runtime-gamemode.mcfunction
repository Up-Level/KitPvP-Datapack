execute as @a[scores={class=1,optIn=1,respawn=0}] run function kitpvp:classes/01-test
execute as @a[scores={class=2,optIn=1,respawn=0}] run function kitpvp:classes/02-scout
execute as @a[scores={class=3,optIn=1,respawn=0}] run function kitpvp:classes/03-bowspace
execute as @a[scores={class=4,optIn=1,respawn=0}] run function kitpvp:classes/04-swordspace
execute as @a[scores={class=5,optIn=1,respawn=0}] run function kitpvp:classes/05-legionnaire
execute as @a[scores={class=6,optIn=1,respawn=0}] run function kitpvp:classes/06-shieldbearer
execute as @a[scores={class=7,optIn=1,respawn=0}] run function kitpvp:classes/07-endermissionary
execute as @a[scores={class=8,optIn=1,respawn=0}] run function kitpvp:classes/08-hunter
execute as @a[scores={class=9,optIn=1,respawn=0}] run function kitpvp:classes/09-speedygonzales
execute as @a[scores={class=10,optIn=1,respawn=0}] run function kitpvp:classes/10-gunner
execute as @a[scores={class=11,optIn=1,respawn=0}] run function kitpvp:classes/11-sniper
execute as @a[scores={class=12,optIn=1,respawn=0}] run function kitpvp:classes/12-brute
execute as @a[scores={class=13,optIn=1,respawn=0}] run function kitpvp:classes/13-survivalist
execute as @a[scores={class=14,optIn=1,respawn=0}] run function kitpvp:classes/14-berserker
execute as @a[scores={class=15,optIn=1,respawn=0}] run function kitpvp:classes/15-chef
execute as @a[scores={class=16,optIn=1,respawn=0}] run function kitpvp:classes/16-cowboy
execute as @a[scores={class=17,optIn=1,respawn=0}] run function kitpvp:classes/17-viking
execute as @a[scores={class=18,optIn=1,respawn=0}] run function kitpvp:classes/18-seeker

execute as @a[scores={class=100,optIn=1,respawn=0}] run function kitpvp:classes/100-juggernaut

# Remove 1 kill if fell out of map
execute as @a[scores={playerY=..0}] if score gamemode settings matches 3 run scoreboard players remove @s gm03-kills 1
execute as @a[scores={playerY=..0}] run kill @s

# Run Class Triggers
execute as @a unless score @s classTriggers matches 0 if score @s respawn matches 1 run function kitpvp:configure/class-triggers

execute if entity @a[scores={respawn=1}] run function kitpvp:respawn

execute if score map settings matches 1 run function kitpvp:maps/01-four-corners
execute if score map settings matches 2 run function kitpvp:maps/02-sheerdrop
execute if score map settings matches 3 run function kitpvp:maps/03-cargo
execute if score map settings matches 4 run function kitpvp:maps/04-arena

execute if score run gm01-general matches 1 run function kitpvp:gamemodes/01-lives-s/gm01-runtime
execute if score run gm02-general matches 1 run function kitpvp:gamemodes/02-lives-t/gm02-runtime
execute if score run gm03-general matches 1 run function kitpvp:gamemodes/03-deathmatch-s/gm03-runtime
execute if score run gm04-general matches 1 run function kitpvp:gamemodes/04-deathmatch-t/gm04-runtime
execute if score run gm05-general matches 1 run function kitpvp:gamemodes/05-juggernaut/gm05-runtime

# Reset KillBin
scoreboard players set @a[scores={killBin=1..}] killBin 0
