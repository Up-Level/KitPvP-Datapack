

function kitpvp:utility/internal/get-closest-enemy

execute in overworld run item replace block 0 83 1990 container.0 with minecraft:compass{CustomModelData: 1, LodestoneDimension: "minecraft:overworld", LodestonePos: {X: 0, Y: 0, Z: 0}, LodestoneTracked: 0b}

execute in overworld as @e[name="spawn"] run loot replace block 0 83 1990 container.1 loot kitpvp:tracker_name
execute in overworld run data modify block 0 83 1990 Items[0].tag.display set from block 0 83 1990 Items[1].tag.display

execute in overworld store result block 0 83 1990 Items[].tag.LodestonePos.X float 1 run data get entity @a[tag=chosen_enemy,limit=1,sort=nearest] Pos[0]
execute in overworld store result block 0 83 1990 Items[].tag.LodestonePos.Y float 1 run data get entity @a[tag=chosen_enemy,limit=1,sort=nearest] Pos[1]
execute in overworld store result block 0 83 1990 Items[].tag.LodestonePos.Z float 1 run data get entity @a[tag=chosen_enemy,limit=1,sort=nearest] Pos[2]

execute if entity @e[tag=chosen_enemy] in overworld run loot replace entity @s hotbar.4 1 mine 0 83 1990 air{drop_contents:1b}
execute unless entity @e[tag=chosen_enemy] run replaceitem entity @s hotbar.4 compass{CustomModelData:1,LodestoneDimension:"minecraft:fake_dimension_lol", LodestonePos:{X: 420,Y: 69,Z: 420}, LodestoneTracked:1b, display:{Name:'[{"text":"Player Tracker (???)","italic":false}]',Lore:['[{"text":"Points toward the nearest Enemy player.","italic":false,"color":"gray"}]','[{"text":"(No Player Found)","italic":false,"color":"gray"}]']}}
