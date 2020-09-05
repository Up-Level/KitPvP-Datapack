tag @e remove owner
function kitpvp:utility/internal/get-closest-enemy

scoreboard players set mot0 temp 0
scoreboard players set mot1 temp 0
scoreboard players set mot2 temp 0

function kitpvp:utility/internal/projectiles/arrow

tag @e[tag=temp] add entity0
tag @e[tag=chosen_enemy,limit=1] add entity1
tag @s add owner

function mathf:minecraft/vector-between-entities

scoreboard players operation inp0 mIO = out0 mIO
scoreboard players operation inp1 mIO = out1 mIO
scoreboard players operation inp2 mIO = out2 mIO

function mathf:vector/normalise

execute store result entity @e[type=minecraft:arrow,limit=1,tag=temp] Motion[0] double 0.01 run scoreboard players get out0 mIO
execute store result entity @e[type=minecraft:arrow,limit=1,tag=temp] Motion[1] double 0.01 run scoreboard players get out1 mIO
execute store result entity @e[type=minecraft:arrow,limit=1,tag=temp] Motion[2] double 0.01 run scoreboard players get out2 mIO

tag @e[tag=temp] remove temp
