run tag @s add entity0
run tag @s add owner

run function mathf:minecraft/entity-rotation-to-vector

run scoreboard players operation pow0 temp = out0 mIO
run scoreboard players operation pow1 temp = out1 mIO
run scoreboard players operation pow2 temp = out2 mIO

run scoreboard players operation mot0 temp = out0 mIO
run scoreboard players operation mot1 temp = out1 mIO
run scoreboard players operation mot2 temp = out2 mIO

execute run function kitpvp:utility/internal/projectiles/fireball
