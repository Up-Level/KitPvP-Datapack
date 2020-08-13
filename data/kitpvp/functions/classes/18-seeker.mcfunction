# Class 18 - Seeker

execute as @s run execute unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run replaceitem entity @s hotbar.0 bow{Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}]}
replaceitem entity @s inventory.8 spectral_arrow
replaceitem entity @s armor.chest chainmail_chestplate{Unbreakable:1}
replaceitem entity @s armor.legs leather_leggings{Unbreakable:1}
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:feather_falling",lvl:2}]}

tag @a[tag=self] remove self
tag @a[tag=seeked] remove seeked

tag @s add self
#Solo
execute if entity @s[team=none] run tag @a[tag=!self,scores={optIn=1},team=none,sort=nearest,limit=1,gamemode=!spectator] add seeked

#Teams
execute if entity @s[team=red] unless @a[tag=seeked] run tag @a[scores={optIn=1},team=!red,sort=nearest,limit=1,gamemode=!spectator] add seeked
execute if entity @s[team=blue] unless @a[tag=seeked] run tag @a[scores={optIn=1},team=!blue,sort=nearest,limit=1,gamemode=!spectator] add seeked
execute if entity @s[team=green] unless @a[tag=seeked] run tag @a[scores={optIn=1},team=!green,sort=nearest,limit=1,gamemode=!spectator] add seeked
execute if entity @s[team=yellow] unless @a[tag=seeked] run tag @a[scores={optIn=1},team=!yellow,sort=nearest,limit=1,gamemode=!spectator] add seeked

#Jugg
execute if entity @s[team=juggernautTeam] run tag @ascores={optIn=1},team=juggernaut,sort=nearest,limit=1,gamemode=!spectator] add seeked

execute in overworld run replaceitem block 0 83 1990 container.0 minecraft:compass{LodestoneDimension:"minecraft:overworld",LodestonePos:{X: 0,Y: 0,Z: 0}, LodestoneTracked:0b}

execute in overworld store result block 0 83 1990 Items[].tag.LodestonePos.X float 1 run data get entity @a[tag=seeked,limit=1,sort=nearest] Pos[0]
execute in overworld store result block 0 83 1990 Items[].tag.LodestonePos.Y float 1 run data get entity @a[tag=seeked,limit=1,sort=nearest] Pos[1]
execute in overworld store result block 0 83 1990 Items[].tag.LodestonePos.Z float 1 run data get entity @a[tag=seeked,limit=1,sort=nearest] Pos[2]

execute in overworld loot replace entity @s hotbar.4 1 mine 0 83 1990 air{drop_contents:1b}
