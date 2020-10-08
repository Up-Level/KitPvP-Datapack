tag @s remove GoodSpawn

tag @s add mathf.entity0
tag @e[limit=1,sort=nearest,scores={respawn=0,optIn=1},gamemode=!spectator] add mathf.entity1

function mathf:minecraft/dist-between-entities

execute if score o0 mathf.io > spawnDistance settings run tag @s add GoodSpawn
