execute if score map settings matches 1 at @e[name=point-01] run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"active-point\"}"}
execute if score map settings matches 2 at @e[name=point-02] run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"active-point\"}"}
execute if score map settings matches 3 at @e[name=point-03] run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"active-point\"}"}
execute if score map settings matches 4 at @e[name=point-04] run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"active-point\"}"}
execute if score map settings matches 5 at @e[name=point-05] run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"active-point\"}"}

# Make a circle around the point
execute as @e[name=active-point] run summon armor_stand ~3 ~-1.35 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"white_concrete",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}
execute as @e[name=active-point] run summon armor_stand ~-3 ~-1.35 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"white_concrete",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}
execute as @e[name=active-point] run summon armor_stand ~ ~-1.35 ~3 {Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"white_concrete",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}
execute as @e[name=active-point] run summon armor_stand ~ ~-1.35 ~-3 {Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"white_concrete",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}
execute as @e[name=active-point] run summon armor_stand ~2.1 ~-1.35 ~2.1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"white_concrete",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}
execute as @e[name=active-point] run summon armor_stand ~2.1 ~-1.35 ~-2.1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"white_concrete",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}
execute as @e[name=active-point] run summon armor_stand ~-2.1 ~-1.35 ~2.1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"white_concrete",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}
execute as @e[name=active-point] run summon armor_stand ~-2.1 ~-1.35 ~-2.1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"white_concrete",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}

execute unless score ticks gm_general matches 0 run bossbar set 0 name {"text":"Control Point is unlocked.","color":"gold"}
execute store result bossbar minecraft:0 max run scoreboard players get timeToCapture gm_general
execute store result bossbar minecraft:0 value run scoreboard players get captureTime gm_general

scoreboard players set ticks gm_general -1

say cock
