execute as @e[tag=newBlock] run tag @s add block
execute as @e[tag=newBlock,tag=main,type=minecraft:armor_stand] at @s run particle minecraft:block minecraft:cobblestone ~ ~.5 ~ 0.25 0.25 0.25 0.025 30 force
execute as @e[tag=newBlock,tag=main,type=minecraft:armor_stand] at @s run playsound minecraft:block.stone.place block @a ~ ~ ~ 1 1
execute as @e[tag=newBlock] run tag @s remove newBlock

execute as @e[tag=block] run scoreboard players remove @s blockTime 1

execute as @e[scores={blockTime=0},tag=block,tag=main,type=minecraft:armor_stand] at @s run particle minecraft:block minecraft:cobblestone ~ ~.5 ~ 0.25 0.25 0.25 0.025 60 force
execute as @e[scores={blockTime=0},tag=block,tag=main,type=minecraft:armor_stand] at @s run playsound minecraft:block.stone.break block @a ~ ~ ~ 2 1
execute as @e[scores={blockTime=..0},tag=block] at @s run tp @s 0 0 2000
execute as @e[scores={blockTime=..-5},tag=block] run kill @s
