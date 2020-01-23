scoreboard players set @a[scores={dead=1,optIn=0}] class 0
clear @a[scores={dead=1}]
effect clear @a[scores={dead=1}]
execute if entity @a[scores={dead=1}] run execute at @a run playsound minecraft:entity.lightning_bolt.thunder block @s ~ ~ ~ 10 1

# Send player to respawn area if gamemode is running
execute as @a[scores={dead=1,optIn=1}] if score gamemode-running settings matches 1 run scoreboard players set @s respawn 1
tp @a[scores={respawn=1}] 1000 16 0
scoreboard players set @a[scores={respawn=1}] respawnTimer 200

scoreboard players reset @a[scores={dead=1}] dead
