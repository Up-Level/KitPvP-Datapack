summon minecraft:armor_stand 0 20 2000 {Invisible:1,NoGravity:1,Passengers:[{id:"falling_block",BlockState:{Name:"minecraft:cobblestone"},Data:0,Time:1,NoAI:1b,DropItem:0,Tags:["newBlock"],NoGravity:1b,Glowing:0b},{id:shulker,AttachFace:1,Invulnerable:1,PersistenceRequired:1,NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:199980,ShowParticles:0b},{Id:25,Amplifier:255,Duration:199980,ShowParticles:0b}],Tags:["newBlock"]}],Tags:["newBlock","temp"],Marker:1b}
tp @e[tag=temp] ~ ~ ~
tag @e remove temp
