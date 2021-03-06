tag @a remove self
tag @a remove targets_friend
tag @a remove chosen_friend

tag @s add self

#Make Shlker Box if its not there MARK
execute in overworld unless block 0 83 1990 minecraft:shulker_box run setblock 0 83 1990 minecraft:shulker_box

#Teams
execute if entity @s[team=red] run tag @a[scores={optIn=1},team=red,tag=!self] add targets_friend
execute if entity @s[team=blue] run tag @a[scores={optIn=1},team=blue,tag=!self] add targets_friend
execute if entity @s[team=green] run tag @a[scores={optIn=1},team=green,tag=!self] add targets_friend
execute if entity @s[team=yellow] run tag @a[scores={optIn=1},team=yellow,tag=!self] add targets_friend

#Jugg
execute if entity @s[team=juggernautTeam] run tag @a[scores={optIn=1},team=juggernautTeam,tag=!self] add targets_friend

execute if entity @s[team=juggernaut] run tag @a[scores={optIn=1},team=juggernaut,tag=!self] add targets_friend

#Zombie
execute if entity @s[team=uninfected] run tag @a[scores={optIn=1},team=uninfected,tag=!self] add targets_friend

execute if entity @s[team=infected] run tag @a[scores={optIn=1},team=infected,tag=!self] add targets_friend

#Select out lucky winner
execute at @s run tag @e[tag=targets_friend,limit=1,sort=nearest,scores={respawn=0},gamemode=!spectator] add chosen_friend

execute in overworld as @a[tag=chosen_friend] run loot replace block 0 83 1990 container.3 loot kitpvp:get_player_head
execute in minecraft:overworld run data modify storage kitpvp:closest_friend Name set from block 0 83 1990 Items[3].tag.SkullOwner.Name
