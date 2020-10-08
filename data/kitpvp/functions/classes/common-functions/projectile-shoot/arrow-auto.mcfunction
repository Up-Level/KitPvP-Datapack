tag @e remove owner
function kitpvp:utility/internal/get-closest-enemy

scoreboard players set mot0 temp 0
scoreboard players set mot1 temp 0
scoreboard players set mot2 temp 0

tag @s add owner

function kitpvp:utility/internal/projectiles/arrow

tag @e[tag=temp] add mathf.entity0
tag @e[tag=chosen_enemy,limit=1] add mathf.entity1

function mathf:minecraft/vector-between-entities-eyes

scoreboard players operation i0 mathf.io = o0 mathf.io
scoreboard players operation i1 mathf.io = o1 mathf.io
scoreboard players operation i2 mathf.io = o2 mathf.io

function mathf:vector/normalise

data modify entity @e[tag=temp,limit=1] NoGravity set value 1
data modify entity @e[tag=temp,limit=1] PierceLevel set value 3

scoreboard players operation @e[tag=temp] motionO0 = o0 mathf.io
scoreboard players operation @e[tag=temp] motionO1 = o1 mathf.io
scoreboard players operation @e[tag=temp] motionO2 = o2 mathf.io

tag @e[tag=temp] add Override
tag @e[tag=temp] remove temp
