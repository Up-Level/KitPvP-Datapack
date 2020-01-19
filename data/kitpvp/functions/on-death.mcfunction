scoreboard players set @a[scores={dead=1,optIn=0}] class 0
clear @a[scores={dead=1}]
effect clear @a[scores={dead=1}]
execute if entity @a[scores={dead=1}] run execute as @a run playsound minecraft:entity.lightning_bolt.thunder block @s ~ ~ ~ 10 1
scoreboard players set @a[scores={dead=1}] dead 0
