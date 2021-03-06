#summon minecraft:armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Passengers:[{id:"falling_block",BlockState:{Name:"minecraft:cobblestone"},Data:0,Time:1,NoAI:1b,DropItem:0,Tags:["newBlock"],NoGravity:1b,Glowing:0b},{id:item,Tags:["dontDelete","newBlock"],Age:-32768, PickupDelay:32767,Item:{id:"minecraft:stone_button",Count:1},Passengers:[{id:shulker,AttachFace:1,Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:199980,ShowParticles:0b},{Id:25,Amplifier:255,Duration:199980,ShowParticles:0b}],Tags:["newBlock"]}]}],Tags:["newBlock","temp"],Marker:1b}
#summon minecraft:armor_stand ~ ~ ~ {Tags:["newBlock","temp"],Invisible:1,NoGravity:1,Marker:1b,Passengers:[{id:item,Tags:["dontDelete","newBlock"],Age:-32768, PickupDelay:32767,Item:{id:"minecraft:stone_button",Count:1},Passengers:[{id:shulker,AttachFace:1,Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:199980,ShowParticles:0b},{Id:25,Amplifier:255,Duration:199980,ShowParticles:0b}],Tags:["newBlock"]}]}]}
#summon minecraft:armor_stand ~ ~ ~ {Tags:["newBlock","temp"],Invisible:1,NoGravity:1,Marker:1b,Passengers:[{id:area_effect_cloud,Tags:["newBlock"],WaitTime:0,Duration:5000,Radius:1,Particle:"block air",Passengers:[{id:shulker,AttachFace:1,Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:199980,ShowParticles:0b},{Id:25,Amplifier:255,Duration:199980,ShowParticles:0b}],Tags:["newBlock"]}]}]}
#summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["newBlock","temp"],WaitTime:0,Duration:5000,Radius:0.1,Particle:"block air",Passengers:[{id:shulker,AttachFace:1,Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:199980,ShowParticles:0b},{Id:25,Amplifier:255,Duration:199980,ShowParticles:0b}],Tags:["newBlock"]}]}
#summon minecraft:area_effect_cloud 0 20 2000 {Tags:["newBlock","temp"],WaitTime:0,Duration:5000,Radius:0.1,Particle:"block air",Passengers:[{id:shulker,AttachFace:1,Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:199980,ShowParticles:0b},{Id:25,Amplifier:255,Duration:199980,ShowParticles:0b}],Tags:["newBlock"]}]}

summon minecraft:armor_stand 0 20 2000 {Tags:["newBlock","temp","main"],Invisible:1,NoGravity:1,Marker:1b,Passengers:[{id:"falling_block",BlockState:{Name:"minecraft:cobblestone"},Time:1,DropItem:0,Tags:["newBlock","temp"],NoGravity:1b,Glowing:0b}]}
summon minecraft:area_effect_cloud 0 20 2000 {Tags:["newBlock","temp"],WaitTime:0,Duration:5000,Radius:0.1f,Particle:"block air",Passengers:[{id:"shulker",AttachFace:1,Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,Tags:["newBlock","temp"]}]}

effect give @e[type=minecraft:shulker,tag=temp] minecraft:invisibility 99999 0 true

tp @e[type=armor_stand,tag=temp,tag=main] ~ ~ ~
tp @e[type=area_effect_cloud,tag=temp,tag=!main] ~ ~-0.375 ~

# execute as @e[tag=temp] run scoreboard players set @s blockTime 100
execute as @e[tag=temp] run scoreboard players operation @s blockTime = blockTime temp 
tag @e remove temp
