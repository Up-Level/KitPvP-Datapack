# Class 21 - Spearman

execute if entity @s[scores={dropTrident=0,cdSpear=-1,hadTrident=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:trident"}]}] run scoreboard players set @s throwTrident 1
execute if score @s dropTrident >= one number run scoreboard players set @s dropTrident 0

execute unless score @s cdSpear >= zero number unless entity @s[nbt={Inventory:[{id:"minecraft:trident"}]}] run replaceitem entity @s hotbar.0 minecraft:trident{display:{Name:'[{"text":"Spear","italic":false}]'},Unbreakable:1b,AttributeModifiers:[{Slot:"mainhand", AttributeName:"generic.attack_damage", Name:"generic.attack_damage", Amount:8.0, Operation:0, UUID:[I; -192596, -61963, -161679, -10288428]},{Slot:"mainhand", AttributeName:"generic.attack_speed", Name:"generic.attack_speed", Amount:-3.1, Operation:0, UUID:[I; -192596, -61963, -161679, -10288428]}]}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:shield"}]}] run replaceitem entity @s weapon.offhand minecraft:shield{Unbreakable:1b}
replaceitem entity @s armor.chest chainmail_chestplate{Unbreakable:1b}
replaceitem entity @s armor.legs iron_leggings{Unbreakable:1b}
replaceitem entity @s armor.feet leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

execute unless entity @s[scores={throwTrident=0}] run scoreboard players operation @s cdSpear = spear cooldown
execute unless entity @s[scores={throwTrident=0}] run scoreboard players set @s throwTrident 0

execute unless score @s cdSpear matches -1 run scoreboard players remove @s[scores={cdSpear=0..101}] cdSpear 1
execute if score @s cdSpear > twenty number run clear @s minecraft:trident

execute if entity @s[nbt={Inventory:[{id:"minecraft:trident"}]}] run scoreboard players set @s hadTrident 1
execute unless entity @s[nbt={Inventory:[{id:"minecraft:trident"}]}] run scoreboard players set @s hadTrident 0
