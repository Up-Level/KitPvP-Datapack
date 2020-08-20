tag @a remove self
tag @a remove targets
tag @a remove chosen

tag @s add self

#Make Shlker Box if its not there MARK
execute in overworld unless block 0 83 1990 minecraft:shulker_box run setblock 0 83 1990 minecraft:shulker_box

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

execute in overworld as @a[tag=chosen] run loot replace block 0 83 1990 container.1 loot kitpvp:get_player_head

execute in minecraft:overworld run data modify storage minecraft:player_name Name set from block 0 83 1990 Items.tag.SkullOwner