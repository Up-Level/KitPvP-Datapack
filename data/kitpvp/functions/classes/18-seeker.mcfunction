# Class 18 - Seeker

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run replaceitem entity @s hotbar.0 bow{Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}]}
replaceitem entity @s inventory.8 spectral_arrow
replaceitem entity @s armor.chest chainmail_chestplate{Unbreakable:1}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

tag @e[tag=self] remove self
tag @e[tag=targets] remove targets
tag @e[tag=chosen] remove chosen

tag @s add self

#No team
execute at @s if entity @s[team=none] run tag @a[tag=!self,scores={optIn=1},team=none] add targets
execute at @s if entity @s[team=none] run tag @a[scores={optIn=1},team=!none] add targets

#Teams
execute at @s if entity @s[team=red] run tag @a[scores={optIn=1},team=!red] add targets
execute at @s if entity @s[team=blue] run tag @a[scores={optIn=1},team=!blue] add targets
execute at @s if entity @s[team=green]  run tag @a[scores={optIn=1},team=!green] add targets
execute at @s if entity @s[team=yellow] run tag @a[scores={optIn=1},team=!yellow] add targets

#Jugg
execute at @s if entity @s[team=juggernautTeam] run tag @a[scores={optIn=1},team=juggernaut] add targets

tag @e[tag=targets,limit=1,sort=nearest,scores={respawn=0},gamemode=!spectator] add chosen

execute in overworld run replaceitem block 0 83 1990 container.0 minecraft:compass{LodestoneDimension:"minecraft:overworld",LodestonePos:{X: 0,Y: 0,Z: 0}, LodestoneTracked:0b}

execute in overworld store result block 0 83 1990 Items[].tag.LodestonePos.X float 1 run data get entity @a[tag=chosen,limit=1,sort=nearest] Pos[0]
execute in overworld store result block 0 83 1990 Items[].tag.LodestonePos.Y float 1 run data get entity @a[tag=chosen,limit=1,sort=nearest] Pos[1]
execute in overworld store result block 0 83 1990 Items[].tag.LodestonePos.Z float 1 run data get entity @a[tag=chosen,limit=1,sort=nearest] Pos[2]

execute if entity @e[tag=chosen] in overworld run loot replace entity @s hotbar.4 1 mine 0 83 1990 air{drop_contents:1b}
execute unless entity @e[tag=chosen] run replaceitem entity @s hotbar.4 compass{LodestoneDimension:"minecraft:overworld", LodestonePos:{X: 0,Y: 0,Z: 0}, LodestoneTracked:1b}
