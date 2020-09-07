# Class 15 - Chef

execute unless score @s cdChefFork >= zero number unless entity @s[nbt={Inventory:[{id:"minecraft:trident"}]}] run replaceitem entity @s hotbar.0 minecraft:trident{display:{Name:'[{"text":"Fork","italic":false}]'},Unbreakable:1b,AttributeModifiers:[{Slot:"mainhand", AttributeName:"generic.attack_damage", Name:"generic.attack_damage", Amount:8.0, Operation:0, UUID:[I; -192596, -61963, -161679, -10288428]},{Slot:"mainhand", AttributeName:"generic.attack_speed", Name:"generic.attack_speed", Amount:-3.1, Operation:0, UUID:[I; -192596, -61963, -161679, -10288428]}]}
replaceitem entity @s hotbar.1 minecraft:iron_shovel{Unbreakable:1b,display:{Name:'[{"text":"Spoon","italic":false}]'}}
replaceitem entity @s hotbar.2 minecraft:milk_bucket
execute unless entity @s[nbt={Inventory:[{id:"minecraft:shield"}]}] run replaceitem entity @s weapon.offhand minecraft:shield{Unbreakable:1b,display:{Name:'[{"text":"Dinner Plate","italic":false}]',Lore:['[{"text":"Supposedly...","italic":false,"color":"gray"}]']}}

replaceitem entity @s armor.chest leather_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs chainmail_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}


execute unless entity @s[scores={throwTrident=0}] run scoreboard players operation @s cdChefFork = chef-fork cooldown

execute unless score @s cdChefFork matches -1 run scoreboard players remove @s[scores={cdChefFork=0..101}] cdChefFork 1
execute if score @s cdChefFork > twenty number run clear @s minecraft:trident

effect clear @s minecraft:hunger

attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-0 SpeedClass 0 multiply_base
