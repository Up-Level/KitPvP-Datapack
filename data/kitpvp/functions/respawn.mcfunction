execute as @a[scores={respawn=1}] run scoreboard players remove @s respawnTimer 1

effect give @a[scores={respawn=1}] minecraft:resistance 5 255 true
effect give @a[scores={respawn=1}] minecraft:weakness 5 255 true
effect give @a[scores={respawn=1}] minecraft:regeneration 5 255 true
effect give @a[scores={respawn=1}] minecraft:saturation 5 255 true
effect give @a[scores={respawn=1}] minecraft:invisibility 1 255 true

tp @a[scores={respawn=1}] 0 16 1000
replaceitem entity @a[scores={respawn=1}] hotbar.0 written_book{pages:['["",{"text":"Scout","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 2"}},{"text":"\\n"},{"text":"Bow Space","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 3"}},{"text":"\\n"},{"text":"Sword Space","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 4"}},{"text":"\\n"},{"text":"Legionnaire","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 5"}},{"text":"\\n"},{"text":"Shieldbearer","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 6"}},{"text":"\\n"},{"text":"Ender Missionary","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 7"}},{"text":"\\n"},{"text":"Hunter","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 8"}},{"text":"\\n"},{"text":"Speedy Gonzales","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 9"}},{"text":"\\n"},{"text":"Gunner","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 10"}},{"text":"\\n"},{"text":"Sniper","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 11"}}]'],title:"Select Class",author:KitPvP}

clear @a[scores={respawnTimer=..0}]

execute if score map settings matches 1 run spreadplayers -1 -1 30 200 false @a[scores={respawnTimer=..0}]
execute if score map settings matches 2 run spreadplayers 1981 -21 15 100 false @a[scores={respawnTimer=..0}]
execute if score map settings matches 3 run spreadplayers 4000 35 30 200 false @a[scores={respawnTimer=..0}]

scoreboard players set @a[scores={respawnTimer=..0}] respawn 0
scoreboard players reset @a[scores={respawnTimer=..0}] respawnTimer
