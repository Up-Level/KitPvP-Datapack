clear @a[scores={dead=1}]
effect clear @a[scores={dead=1}]

execute at @a[name=!Leo_is_a_Legend,scores={dead=1}] run playsound minecraft:entity.lightning_bolt.thunder block @a ~ ~ ~ 10000000 1
execute at @a[name=Leo_is_a_Legend,scores={dead=1}] run playsound minecraft:ambient.cave master @a ~ ~ ~ 10000000 0.25
execute at @a[name=Leo_is_a_Legend,scores={dead=1}] run particle minecraft:smoke ~ ~1 ~ 0.4 0.4 0.4 0.2 100 force

execute as @a[scores={dead=1}] run function kitpvp:utility/internal/reset-player-scoreboards
execute as @a[scores={dead=1}] run tellraw @a [{"selector":"@s","color":"red"},{"text":" has Died!","color":"red"}]

# If environmental
execute as @a[scores={dead=1}] if score map settings matches 1 if entity @s[scores={playerY=..0025}] run function kitpvp:on-env-death
execute as @a[scores={dead=1}] if score map settings matches 2 if entity @s[scores={playerY=..1325}] run function kitpvp:on-env-death
execute as @a[scores={dead=1}] if score map settings matches 3 if entity @s[scores={playerY=..7725}] run function kitpvp:on-env-death
execute as @a[scores={dead=1}] if score map settings matches 4 if entity @s[scores={playerY=..0025}] run function kitpvp:on-env-death
execute as @a[scores={dead=1}] if score map settings matches 5 if entity @s[scores={playerY=..0025}] run function kitpvp:on-env-death
execute as @a[scores={dead=1}] if score map settings matches 6 if entity @s[scores={playerY=..0025}] run function kitpvp:on-env-death
execute as @a[scores={dead=1}] if score map settings matches 7 if entity @s[scores={playerY=..0025}] run function kitpvp:on-env-death
execute as @a[scores={dead=1}] if score map settings matches 8 if entity @s[scores={playerY=..0025}] run function kitpvp:on-env-death
execute as @a[scores={dead=1}] if score map settings matches 9 if entity @s[scores={playerY=..0025}] run function kitpvp:on-env-death

# Send player to respawn area if gamemode is running
execute as @a[scores={dead=1,optIn=1}] if score gamemodeRunning settings matches 1 run scoreboard players set @s respawn 1
scoreboard players set @a[scores={respawn=1,dead=1}] respawnTimer 200
scoreboard players set @a[scores={dead=1},team=uninfected] respawnTimer 5

scoreboard players set @a[scores={dead=1}] timeAlive 0

scoreboard players set @a[scores={dead=1}] dead 0
