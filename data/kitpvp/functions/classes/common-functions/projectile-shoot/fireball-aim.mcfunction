tag @e remove owner

tag @s add entity0
tag @s add owner

function mathf:minecraft/entity-rotation-to-vector

scoreboard players operation pow0 temp = out0 mIO
scoreboard players operation pow1 temp = out1 mIO
scoreboard players operation pow2 temp = out2 mIO

scoreboard players operation mot0 temp = out0 mIO
scoreboard players operation mot1 temp = out1 mIO
scoreboard players operation mot2 temp = out2 mIO

function kitpvp:utility/internal/projectiles/fireball
data modify entity @e[tag=temp,limit=1] ExplosionPower set value 1.95
tag @e[tag=temp] remove temp
