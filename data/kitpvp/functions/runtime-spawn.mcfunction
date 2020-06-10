execute as @e[name="spawn"] run effect give @a[distance=..50,gamemode=adventure] minecraft:resistance 2 255 true
execute as @e[name="spawn"] run effect give @a[distance=..50,gamemode=adventure] minecraft:weakness 2 255 true
execute as @e[name="spawn"] run effect give @a[distance=..50,gamemode=adventure] minecraft:regeneration 2 255 true
execute as @e[name="spawn"] run effect give @a[distance=..50,gamemode=adventure] minecraft:saturation 2 255 true

# Kill player if they are below y0
execute as @a[scores={playerY=..0}] run kill @s

# Run Menu Triggers
execute as @a unless score @s menuTriggers matches 0 run function kitpvp:configure/menu-triggers

# Run Class Triggers
execute as @a unless score @s classTriggers matches 0 run function kitpvp:configure/class-triggers

# Class Selection in spawn
replaceitem entity @a[scores={optIn=1}] hotbar.0 written_book{pages:['["",{"text":"1 - Scout","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 2"}},{"text":"\\n"},{"text":"2 - Bow Space","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 3"}},{"text":"\\n"},{"text":"3 - Sword Space","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 4"}},{"text":"\\n"},{"text":"4 - Legionnaire","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 5"}},{"text":"\\n"},{"text":"5 - Shieldbearer","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 6"}},{"text":"\\n"},{"text":"6 - Ender Missionary","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 7"}},{"text":"\\n"},{"text":"7 - Hunter","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 8"}},{"text":"\\n"},{"text":"8 - Speedy Gonzales","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 9"}},{"text":"\\n"},{"text":"9 - Gunner","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 10"}},{"text":"\\n"},{"text":"10 - Sniper","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 11"}},{"text":"\\n"},{"text":"11 - Brute","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 12"}},{"text":"\\n"},{"text":"12 - Survivalist","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 13"}},{"text":"\\n"},{"text":"13 - Berserker","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 14"}},{"text":"\\n"},{"text":"14 - Chef","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 15"}},{"text":"\\n "}]','["",{"text":"15 - Cowboy","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 16"}},{"text":"\\n"},{"text":"16 - Viking","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 17"}},{"text":"\\n"},{"text":"17 - Seeker","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 18"}}]'],title:"Select Class",author:KitPvP,display:{Lore:["Change your Class while you are respawning."]}}

scoreboard players set @a gm01-lives 3
scoreboard players set @a gm02-lives 3

execute if score gamemode settings matches 1 run team join none @a

execute if score gamemode-bin settings matches 1 run scoreboard players set @a[scores={class=0}] class 6

execute if score gamemode settings matches 1 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/01-lives-s/gm01-setup
execute if score gamemode settings matches 2 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/02-lives-t/gm02-setup
execute if score gamemode settings matches 3 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/03-deathmatch-s/gm03-setup
execute if score gamemode settings matches 4 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/04-deathmatch-t/gm04-setup
execute if score gamemode settings matches 5 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/05-juggernaut/gm05-setup
