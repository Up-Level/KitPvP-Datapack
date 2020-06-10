clear @a[scores={dead=1}]
effect clear @a[scores={dead=1}]

execute at @a[name=!Leo_is_a_Legend,scores={dead=1}] run playsound minecraft:entity.lightning_bolt.thunder block @a ~ ~ ~ 10000000 1
execute at @a[name=Leo_is_a_Legend,scores={dead=1}] run playsound minecraft:ambient.cave master @a ~ ~ ~ 10000000 0.25
execute at @a[name=Leo_is_a_Legend,scores={dead=1}] run particle minecraft:smoke ~ ~1 ~ 0.4 0.4 0.4 0.2 100 force

scoreboard players set @a[scores={dead=1}] killsSinceDeath 0
scoreboard players set @a[scores={dead=1}] chef-fork 1
tellraw @a ["",{"selector":"@a[scores={dead=1}]","color":"red"},{"text":" has Died!","color":"red"}]

# Send player to respawn area if gamemode is running
execute as @a[scores={dead=1,optIn=1}] if score gamemode-running settings matches 1 run scoreboard players set @s respawn 1
scoreboard players set @a[scores={respawn=1,dead=1}] respawnTimer 200

scoreboard players set @a[scores={dead=1}] dead 0
