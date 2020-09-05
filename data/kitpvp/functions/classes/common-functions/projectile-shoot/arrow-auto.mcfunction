tag @e remove owner
function kitpvp:utility/internal/get-closest-enemy

tag @s add entity0
tag @e[tag=chosen_enemy,limit=1] add entity1
tag @s add owner

function mathf:minecraft/vector-between-entities

scoreboard players operation inp0 mIO = out0 mIO
scoreboard players operation inp1 mIO = out1 mIO
scoreboard players operation inp2 mIO = out2 mIO

function mathf:vector/normalise

scoreboard players operation mot0 temp = out0 mIO
scoreboard players operation mot1 temp = out1 mIO
scoreboard players operation mot2 temp = out2 mIO

function kitpvp:utility/internal/projectiles/arrow
