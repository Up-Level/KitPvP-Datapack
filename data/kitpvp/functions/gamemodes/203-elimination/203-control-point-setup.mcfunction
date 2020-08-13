execute if score map settings matches 1 at @e[name=point-01] run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"active-point\"}"}
execute if score map settings matches 2 at @e[name=point-02] run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"active-point\"}"}
execute if score map settings matches 3 at @e[name=point-03] run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"active-point\"}"}
execute if score map settings matches 4 at @e[name=point-04] run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"active-point\"}"}
execute if score map settings matches 5 at @e[name=point-05] run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Marker:1,CustomName:"{\"text\":\"active-point\"}"}

# Make a circle around the point
execute at @e[name=active-point] run summon armor_stand ~3 ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1,Silent:1,ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}
execute at @e[name=active-point] run summon armor_stand ~-3 ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1,Silent:1,ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}
execute at @e[name=active-point] run summon armor_stand ~ ~ ~3 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1,Silent:1,ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}
execute at @e[name=active-point] run summon armor_stand ~ ~ ~-3 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1,Silent:1,ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}
execute at @e[name=active-point] run summon armor_stand ~2.1 ~ ~2.1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1,Silent:1,ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}
execute at @e[name=active-point] run summon armor_stand ~2.1 ~ ~-2.1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1,Silent:1,ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}
execute at @e[name=active-point] run summon armor_stand ~-2.1 ~ ~2.1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1,Silent:1,ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}
execute at @e[name=active-point] run summon armor_stand ~-2.1 ~ ~-2.1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1,Silent:1,ArmorItems:[{},{},{},{id:"white_stained_glass",Count:1b}],CustomName:"{\"text\":\"point-corner\"}"}

bossbar set 0 name {"text":"Control Point is unlocked.","color":"gold"}
execute store result bossbar minecraft:0 max run scoreboard players get timeToCapture gm_general
execute store result bossbar minecraft:0 value run scoreboard players get captureTime gm_general

scoreboard players set ticks gm_general -1