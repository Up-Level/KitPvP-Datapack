# Class 15 - Chef

execute if entity @s[scores={dropTrident=0,chef-fork=-1,hadTrident=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:trident"}]}] run scoreboard players set @s throwTrident 1
execute if score @s dropTrident >= one number run scoreboard players set @s dropTrident 0

execute as @s unless score @s chef-fork >= zero number unless entity @s[nbt={Inventory:[{id:"minecraft:trident"}]}] run replaceitem entity @s hotbar.0 minecraft:trident{Unbreakable:1b,display:{Name:'{"text":"Fork"}'}}
execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_shovel"}]}] run replaceitem entity @s hotbar.1 minecraft:iron_shovel{Unbreakable:1b,display:{Name:'{"text":"Spoon"}'}}
execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:milk_bucket"}]}] run replaceitem entity @s hotbar.2 minecraft:milk_bucket

replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs chainmail_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

execute unless entity @s[scores={throwTrident=0}] run scoreboard players operation @s chef-fork = chef-fork cooldown
execute unless entity @s[scores={throwTrident=0}] run scoreboard players set @s throwTrident 0

execute unless score @s chef-fork matches -1 run scoreboard players remove @s[scores={chef-fork=0..101}] chef-fork 1
execute if score @s chef-fork > twenty number run clear @s minecraft:trident

execute if entity @s[nbt={Inventory:[{id:"minecraft:trident"}]}] run scoreboard players set @s hadTrident 1
execute unless entity @s[nbt={Inventory:[{id:"minecraft:trident"}]}] run scoreboard players set @s hadTrident 0
