execute as @a[scores={respawn=1}] run scoreboard players remove @s respawnTimer 1

effect give @a[scores={respawn=1}] minecraft:resistance 2 255 true
effect give @a[scores={respawn=1}] minecraft:weakness 2 255 true
effect give @a[scores={respawn=1}] minecraft:regeneration 2 255 true
effect give @a[scores={respawn=1}] minecraft:saturation 2 255 true

tp @a[scores={respawn=1,respawnTimer=190..}] -1000.0 65 0

execute unless score gamemode settings matches 6 run item replace entity @a[scores={respawn=1},tag=!vip,team=!infected] hotbar.0 with written_book{CustomModelData: 2, pages: ['["",{"text":"1 - Scout","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 2"}},{"text":"\\n"},{"text":"2 - Bow Space","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 3"}},{"text":"\\n"},{"text":"3 - Sword Space","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 4"}},{"text":"\\n"},{"text":"4 - Legionnaire","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 5"}},{"text":"\\n"},{"text":"5 - Shieldbearer","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 6"}},{"text":"\\n"},{"text":"6 - Ender Missionary","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 7"}},{"text":"\\n"},{"text":"7 - Speedy Gonzales","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 8"}},{"text":"\\n"},{"text":"8 - Gunner","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 9"}},{"text":"\\n"},{"text":"9 - Sniper","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 10"}},{"text":"\\n"},{"text":"10 - Brute","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 11"}},{"text":"\\n"},{"text":"11 - Survivalist","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 12"}},{"text":"\\n"},{"text":"12 - Chef","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 13"}},{"text":"\\n"},{"text":"13 - Totemist","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 14"}},{"text":"\\n"},{"text":"14 - Viking","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 15"}}]', '["",{"text":"15 - Seeker","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 16"}},{"text":"\\n"},{"text":"16 - Rocketeer","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 17"}},{"text":"\\n"},{"text":"17 - Pirate","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 18"}},{"text":"\\n"},{"text":"18 - Earthbender","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 19"}},{"text":"\\n"},{"text":"19 - Wizard","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 20"}}]'], title: "Select Class", author: KitPvP}

clear @a[scores={respawnTimer=..0}]

execute as @a[scores={respawnTimer=..5}] run function kitpvp:utility/internal/reset-player-scoreboards

# Teleport players to map
execute as @a[scores={respawnTimer=..0}] run function kitpvp:utility/internal/map-teleport/single-player

execute as @a[scores={respawnTimer=..0},team=infected] run function kitpvp:gamemodes/205-infected/205-zombie-respawn

scoreboard players set @a[scores={respawnTimer=..0}] respawn 0
scoreboard players reset @a[scores={respawnTimer=..0}] respawnTimer
