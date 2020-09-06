tag @e remove owner
function kitpvp:utility/internal/get-closest-enemy

scoreboard players set mot0 temp 0
scoreboard players set mot1 temp 0
scoreboard players set mot2 temp 0

tag @s add owner

function kitpvp:utility/internal/projectiles/arrow

tag @e[tag=temp] add entity0
tag @e[tag=chosen_enemy,limit=1] add entity1

function mathf:minecraft/vector-between-entities-eyes

scoreboard players operation inp0 mIO = out0 mIO
scoreboard players operation inp1 mIO = out1 mIO
scoreboard players operation inp2 mIO = out2 mIO

function mathf:vector/normalise

data modify entity @e[tag=temp,limit=1] NoGravity set value 1
data modify entity @e[tag=temp,limit=1] PierceLevel set value 3

scoreboard players operation @e[tag=temp] motionO0 = out0 mIO
scoreboard players operation @e[tag=temp] motionO1 = out1 mIO
scoreboard players operation @e[tag=temp] motionO2 = out2 mIO

tag @e[tag=temp] add Override
tag @e[tag=temp] remove temp
