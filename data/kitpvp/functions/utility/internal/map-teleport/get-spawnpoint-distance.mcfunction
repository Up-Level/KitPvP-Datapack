tag @s remove GoodSpawn

tag @s add entity0
tag @e[limit=1,sort=nearest,scores={respawn=0,optIn=1},gamemode=!spectator] add entity1

function mathf:minecraft/vector-between-entities

scoreboard players operation inp0 mIO = out0 mIO
scoreboard players operation inp1 mIO = out1 mIO
scoreboard players operation inp2 mIO = out2 mIO

function mathf:vector/magnitude

execute if score out0 mIO > spawn-distance settings run tag @s add GoodSpawn
