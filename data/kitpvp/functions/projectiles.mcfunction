# Modify newly created and some old projectiles
execute as @e[type=minecraft:trident,nbt={DealtDamage:1b},tag=projectile,scores={classProjectile=15,ProjectileTeam=0}] at @s run effect give @a[distance=..3] minecraft:hunger 5 127

execute as @e[type=minecraft:trident,nbt={DealtDamage:1b},tag=projectile,scores={classProjectile=15,ProjectileTeam=1}] at @s run effect give @a[team=!red,distance=..4] minecraft:hunger 5 127
execute as @e[type=minecraft:trident,nbt={DealtDamage:1b},tag=projectile,scores={classProjectile=15,ProjectileTeam=2}] at @s run effect give @a[team=!blue,distance=..4] minecraft:hunger 5 127
execute as @e[type=minecraft:trident,nbt={DealtDamage:1b},tag=projectile,scores={classProjectile=15,ProjectileTeam=3}] at @s run effect give @a[team=!green,distance=..4] minecraft:hunger 5 127
execute as @e[type=minecraft:trident,nbt={DealtDamage:1b},tag=projectile,scores={classProjectile=15,ProjectileTeam=4}] at @s run effect give @a[team=!yellow,distance=..4] minecraft:hunger 5 127

execute as @e[type=minecraft:trident,nbt={DealtDamage:1b},tag=projectile,scores={classProjectile=15,ProjectileTeam=5}] at @s run effect give @a[team=!juggernautTeam,distance=..4] minecraft:hunger 5 127
execute as @e[type=minecraft:trident,nbt={DealtDamage:1b},tag=projectile,scores={classProjectile=15,ProjectileTeam=6}] at @s run effect give @a[team=!juggernaut,distance=..4] minecraft:hunger 5 127

execute as @e[type=minecraft:trident,nbt={DealtDamage:1b},tag=projectile,scores={classProjectile=15}] at @s run particle minecraft:dust 0 0.25 0 1.5 ~ ~ ~ 2 1 2 0.025 500 force

#execute as @e[type=minecraft:trident,nbt={DealtDamage:1b},tag=projectile,scores={classProjectile=15,ProjectileTeam=3}] at @s run say we have landed the ship

#execute as @e[type=minecraft:trident,nbt={DealtDamage:1b},tag=projectile,scores={classProjectile=15}] at @s run data modify entity @e[type=minecraft:potion,limit=1,sort=nearest] Owner set from entity @s Owner
#execute as @e[type=minecraft:potion] at @s run data modify entity @s Owner set from entity @e[type=minecraft:trident,nbt={DealtDamage:1b},tag=projectile,scores={classProjectile=15},limit=1,sort=nearest,distance=..3] Owner

kill @e[type=minecraft:trident,nbt={DealtDamage:1b},tag=projectile]

tag @e[type=arrow,tag=!projectileChecked,tag=!projectile] add projectile
tag @e[type=trident,tag=!projectileChecked,tag=!projectile] add projectile
tag @e[type=potion,tag=!projectileChecked,tag=!projectile] add projectile
tag @e[type=snowball,tag=!projectileChecked,tag=!projectile] add projectile
tag @e[type=egg,tag=!projectileChecked,tag=!projectile] add projectile
tag @e[type=ender_pearl,tag=!projectileChecked,tag=!projectile] add projectile
tag @e[type=firework_rocket,tag=!projectileChecked,tag=!projectile] add projectile
tag @e[type=fireball,tag=!projectileChecked,tag=!projectile] add projectile
tag @e[type=fishing_bobber,tag=!projectileChecked,tag=!projectile] add projectile

execute as @e[tag=!projectileChecked,tag=projectile] store result score @s ProjectileUUID0 run data get entity @s Owner[0]
execute as @e[tag=!projectileChecked,tag=projectile] store result score @s ProjectileUUID1 run data get entity @s Owner[1]
execute as @e[tag=!projectileChecked,tag=projectile] store result score @s ProjectileUUID2 run data get entity @s Owner[2]
execute as @e[tag=!projectileChecked,tag=projectile] store result score @s ProjectileUUID3 run data get entity @s Owner[3]

# Set class of projectile
execute as @a at @s if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID0 = @s UUID0 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID1 = @s UUID1 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID2 = @s UUID2 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID3 = @s UUID3 run scoreboard players operation @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] classProjectile = @s class

execute as @a[team=none] at @s if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID0 = @s UUID0 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID1 = @s UUID1 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID2 = @s UUID2 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID3 = @s UUID3 run scoreboard players set @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileTeam 0

execute as @a[team=red] at @s if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID0 = @s UUID0 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID1 = @s UUID1 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID2 = @s UUID2 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID3 = @s UUID3 run scoreboard players set @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileTeam 1
execute as @a[team=blue] at @s if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID0 = @s UUID0 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID1 = @s UUID1 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID2 = @s UUID2 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID3 = @s UUID3 run scoreboard players set @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileTeam 2
execute as @a[team=green] at @s if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID0 = @s UUID0 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID1 = @s UUID1 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID2 = @s UUID2 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID3 = @s UUID3 run scoreboard players set @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileTeam 3
execute as @a[team=yellow] at @s if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID0 = @s UUID0 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID1 = @s UUID1 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID2 = @s UUID2 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID3 = @s UUID3 run scoreboard players set @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileTeam 4

execute as @a[team=juggernautTeam] at @s if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID0 = @s UUID0 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID1 = @s UUID1 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID2 = @s UUID2 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID3 = @s UUID3 run scoreboard players set @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileTeam 5

execute as @a[team=juggernaut] at @s if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID0 = @s UUID0 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID1 = @s UUID1 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID2 = @s UUID2 if score @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileUUID3 = @s UUID3 run scoreboard players set @e[tag=!projectileChecked,tag=projectile,limit=1,sort=nearest] ProjectileTeam 6

scoreboard players set @e[type=arrow,tag=!projectileChecked,tag=projectile] arrowTime 300

execute as @e[type=arrow,nbt={ShotFromCrossbow:1b},tag=!projectileChecked,tag=projectile,scores={classProjectile=11}] run data modify entity @s NoGravity set value 1

execute as @e[tag=!projectileChecked,tag=projectile] run execute store result score @s projMotion0 run data get entity @s Motion[0] 1000
execute as @e[tag=!projectileChecked,tag=projectile] run execute store result score @s projMotion1 run data get entity @s Motion[1] 1000
execute as @e[tag=!projectileChecked,tag=projectile] run execute store result score @s projMotion2 run data get entity @s Motion[2] 1000

execute as @e[type=arrow,nbt={ShotFromCrossbow:1b},tag=!projectileChecked,tag=projectile,scores={classProjectile=11}] run scoreboard players operation @s projMotion0 *= crossbow-arrow-speed-multiplier settings
execute as @e[type=arrow,nbt={ShotFromCrossbow:1b},tag=!projectileChecked,tag=projectile,scores={classProjectile=11}] run scoreboard players operation @s projMotion1 *= crossbow-arrow-speed-multiplier settings
execute as @e[type=arrow,nbt={ShotFromCrossbow:1b},tag=!projectileChecked,tag=projectile,scores={classProjectile=11}] run scoreboard players operation @s projMotion2 *= crossbow-arrow-speed-multiplier settings

# execute as @e[type=trident,tag=!projectileChecked,tag=projectile,scores={classProjectile=15}] run scoreboard players operation @s projMotion0 *= crossbow-arrow-speed-multiplier settings
# execute as @e[type=trident,tag=!projectileChecked,tag=projectile,scores={classProjectile=15}] run scoreboard players operation @s projMotion1 *= crossbow-arrow-speed-multiplier settings
# execute as @e[type=trident,tag=!projectileChecked,tag=projectile,scores={classProjectile=15}] run scoreboard players operation @s projMotion2 *= crossbow-arrow-speed-multiplier settings

execute as @e[type=fishing_bobber,tag=!projectileChecked,tag=projectile] run scoreboard players operation @s projMotion0 *= fishing-rod-speed-multiplier settings
execute as @e[type=fishing_bobber,tag=!projectileChecked,tag=projectile] run scoreboard players operation @s projMotion1 *= fishing-rod-speed-multiplier settings
execute as @e[type=fishing_bobber,tag=!projectileChecked,tag=projectile] run scoreboard players operation @s projMotion2 *= fishing-rod-speed-multiplier settings


execute as @e[type=!potion,tag=!projectileChecked,tag=projectile] store result entity @s Motion[0] double 0.001 run scoreboard players get @s projMotion0
execute as @e[type=!potion,tag=!projectileChecked,tag=projectile] store result entity @s Motion[1] double 0.001 run scoreboard players get @s projMotion1
execute as @e[type=!potion,tag=!projectileChecked,tag=projectile] store result entity @s Motion[2] double 0.001 run scoreboard players get @s projMotion2

tag @e[tag=!projectileChecked,tag=projectile] add projectileChecked

scoreboard players remove @e[type=minecraft:arrow] arrowTime 1
kill @e[type=minecraft:arrow,scores={arrowTime=..0}]
