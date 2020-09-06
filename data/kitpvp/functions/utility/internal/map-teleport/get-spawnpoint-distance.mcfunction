tag @s remove GoodSpawn

tag @e remove entity0
tag @e remove entity1

tag @s add entity0
tag @e[limit=1,sort=nearest,scores={respawn=0,optIn=1},gamemode=!spectator] add entity1

function mathf:minecraft/dist-between-entities

execute if score out0 mIO > spawnDistance settings run tag @s add GoodSpawn
