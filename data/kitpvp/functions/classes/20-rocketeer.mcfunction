# Class 20 - Rocketeer

execute unless entity @s[nbt={Inventory:[{id:"minecraft:stone_axe"}]}] run replaceitem entity @s hotbar.0 minecraft:stone_axe{Unbreakable:1b}

replaceitem entity @s[scores={canUseElytra=0}] armor.chest chainmail_chestplate{Unbreakable:1b}
replaceitem entity @s[scores={canUseElytra=1}] armor.chest elytra{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:netherite_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}],display:{Name:'[{"text":"Rocket Boots","italic":false}]''}}

execute if entity @s[scores={inLiquid=1}] run scoreboard players set @s rbFizzleTimer 40

scoreboard players set @s[scores={cdRocketBoots=0..}] crouchTime 0
scoreboard players set @s[scores={rbFizzleTimer=0..}] crouchTime 0
scoreboard players set @s[scores={canUseElytra=1}] crouchTime 0

execute if entity @s[scores={rbFizzleTimer=0..}] at @s run particle minecraft:bubble_pop ~ ~ ~ 0.25 0.1 0.25 0.025 5 force
execute if entity @s[scores={rbFizzleTimer=0..}] at @s run playsound minecraft:block.lava.extinguish ambient @a ~ ~ ~ 0.25 2

execute if entity @s[scores={crouchTime=5..50}] at @s run particle minecraft:flame ~ ~0.1 ~ .5 0.1 .5 0.025 5 force
execute if entity @s[scores={crouchTime=5..50}] at @s run playsound minecraft:block.lava.extinguish ambient @a ~ ~ ~ 0.1 0.8

execute if entity @s[scores={crouchTime=50}] at @s run particle minecraft:flame ~ ~0.1 ~ 1.25 0.01 1.25 0.025 150 force

scoreboard players set @s[scores={crouchTime=50..}] rocketBootsTimer 20
scoreboard players operation @s[scores={crouchTime=50..}] cdRocketBoots = rocket-boots cooldown

execute if entity @s[scores={rocketBootsTimer=0..}] at @s run particle minecraft:flame ~ ~-2 ~ 0 1 0 0.025 10 force
execute if entity @s[scores={rocketBootsTimer=0..}] at @s run playsound minecraft:block.lava.extinguish ambient @a ~ ~ ~ 0.2 1

execute if entity @s[scores={rocketBootsTimer=20}] at @s run playsound minecraft:item.firecharge.use ambient @a ~ ~ ~ 2
execute if entity @s[scores={rocketBootsTimer=20}] at @s run playsound minecraft:block.lava.extinguish ambient @a ~ ~ ~ 2
execute if entity @s[scores={rocketBootsTimer=20}] at @s run effect give @s minecraft:levitation 1 20 true

execute if entity @s[scores={rocketBootsTimer=0}] run scoreboard players set @s canUseElytra 1

execute if entity @s[nbt={OnGround:1b},scores={canUseElytra=1}] run scoreboard players set @s canUseElytra 0
execute if entity @s[scores={inLiquid=1,canUseElytra=1}] run scoreboard players set @s canUseElytra 0

scoreboard players remove @s[scores={rocketBootsTimer=0..}] rocketBootsTimer 1
scoreboard players remove @s[scores={cdRocketBoots=0..}] cdRocketBoots 1
scoreboard players remove @s[scores={rbFizzleTimer=0..}] rbFizzleTimer 1
