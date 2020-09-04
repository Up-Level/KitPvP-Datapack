tag @s remove GoodSpawn

tag @s add entity0
tag @e[limit=1,sort=nearest,scores={respawn=0,optIn=1},gamemode=!spectator] add entity1

function mathf:minecraft/dist-between-entities

execute if score out0 mIO > spawn-distance settings run tag @s add GoodSpawn
