
tag @e[tag=GoodSpawn,limit=1,sort=random] add temp

execute store success score tele-succ temp run tp @s @e[tag=temp]
tag @e[tag=temp] rmove GoodSpawn

# Force(if we dont find a spawn just use any old one)
execute if score tele-succ temp matches 0 run tp @s @e[tag=SpawnPoint,limit=1,sort=random]

tag @e remove temp