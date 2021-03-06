tag @a remove self
tag @a remove targets_enemy
tag @a remove chosen_enemy

tag @s add self

#Make Shlker Box if its not there MARK
execute in overworld unless block 0 83 1990 minecraft:shulker_box run setblock 0 83 1990 minecraft:shulker_box

#No team
execute if entity @s[team=none] run tag @a[tag=!self,scores={optIn=1},team=none] add targets_enemy
execute if entity @s[team=none] run tag @a[scores={optIn=1},team=!none] add targets_enemy

#Teams
execute if entity @s[team=red] run tag @a[scores={optIn=1},team=!red] add targets_enemy
execute if entity @s[team=blue] run tag @a[scores={optIn=1},team=!blue] add targets_enemy
execute if entity @s[team=green] run tag @a[scores={optIn=1},team=!green] add targets_enemy
execute if entity @s[team=yellow] run tag @a[scores={optIn=1},team=!yellow] add targets_enemy

#Jugg
execute if entity @s[team=juggernautTeam] run tag @a[scores={optIn=1},team=juggernaut] add targets_enemy

execute if entity @s[team=juggernaut] run tag @a[scores={optIn=1},team=juggernautTeam] add targets_enemy

#Zombie
execute if entity @s[team=uninfected] run tag @a[scores={optIn=1},team=infected] add targets_enemy

execute if entity @s[team=infected] run tag @a[scores={optIn=1},team=uninfected] add targets_enemy

#Select out lucky winner
execute at @s run tag @e[tag=targets_enemy,limit=1,sort=nearest,scores={respawn=0},gamemode=!spectator] add chosen_enemy

execute in overworld as @a[tag=chosen_enemy] run loot replace block 0 83 1990 container.2 loot kitpvp:get_player_head
execute in minecraft:overworld run data modify storage kitpvp:closest_enemy Name set from block 0 83 1990 Items[2].tag.SkullOwner.Name
