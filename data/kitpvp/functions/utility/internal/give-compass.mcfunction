tag @a remove self
tag @a remove targets
tag @a remove chosen

tag @s add self

#Make Shlker Box if its not there MARK
execute unless block 0 83 1990 minecraft:shulker_box run setblock 0 83 1990 minecraft:shulker_box

#No team
execute if entity @s[team=none] run tag @a[tag=!self,scores={optIn=1},team=none] add targets
execute if entity @s[team=none] run tag @a[scores={optIn=1},team=!none] add targets

#Teams
execute if entity @s[team=red] run tag @a[scores={optIn=1},team=!red] add targets
execute if entity @s[team=blue] run tag @a[scores={optIn=1},team=!blue] add targets
execute if entity @s[team=green] run tag @a[scores={optIn=1},team=!green] add targets
execute if entity @s[team=yellow] run tag @a[scores={optIn=1},team=!yellow] add targets

#Jugg
execute if entity @s[team=juggernautTeam] run tag @a[scores={optIn=1},team=juggernaut] add targets

#Select out lucky winner
execute at @s run tag @e[tag=targets,limit=1,sort=nearest,scores={respawn=0},gamemode=!spectator] add chosen

execute in overworld run replaceitem block 0 83 1990 container.0 minecraft:compass{LodestoneDimension:"minecraft:overworld",LodestonePos:{X: 0,Y: 0,Z: 0}, LodestoneTracked:0b,display:{Name:'[{"text":"Player Tracker","italic":false}]',Lore:['[{"text":"Points toward the nearest Enemy player.","italic":false,"color":"gray"}]']}}

execute in overworld store result block 0 83 1990 Items[].tag.LodestonePos.X float 1 run data get entity @a[tag=chosen,limit=1,sort=nearest] Pos[0]
execute in overworld store result block 0 83 1990 Items[].tag.LodestonePos.Y float 1 run data get entity @a[tag=chosen,limit=1,sort=nearest] Pos[1]
execute in overworld store result block 0 83 1990 Items[].tag.LodestonePos.Z float 1 run data get entity @a[tag=chosen,limit=1,sort=nearest] Pos[2]

execute if entity @e[tag=chosen] in overworld run loot replace entity @s hotbar.4 1 mine 0 83 1990 air{drop_contents:1b}
execute unless entity @e[tag=chosen] run replaceitem entity @s hotbar.4 compass{LodestoneDimension:"minecraft:fake_dimension_lol", LodestonePos:{X: 420,Y: 69,Z: 420}, LodestoneTracked:1b, display:{Name:'[{"text":"Player Tracker","italic":false}]',Lore:['[{"text":"Points toward the nearest Enemy player.","italic":false,"color":"gray"}]','[{"text":"(No Player Found)","italic":false,"color":"gray"}]']}}
