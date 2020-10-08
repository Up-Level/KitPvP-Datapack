tag @e remove owner

tag @s add mathf.entity0
tag @s add owner

function mathf:minecraft/entity-rotation-to-vector

scoreboard players operation pow0 temp = o0 mathf.io
scoreboard players operation pow1 temp = o1 mathf.io
scoreboard players operation pow2 temp = o2 mathf.io

scoreboard players operation mot0 temp = o0 mathf.io
scoreboard players operation mot1 temp = o1 mathf.io
scoreboard players operation mot2 temp = o2 mathf.io

function kitpvp:utility/internal/projectiles/fireball
data modify entity @e[tag=temp,limit=1] ExplosionPower set value 1
tag @e[tag=temp] remove temp
