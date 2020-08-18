execute as @e[name="spawn"] run effect give @a[distance=..150,gamemode=adventure] minecraft:resistance 2 255 true
execute as @e[name="spawn"] run effect give @a[distance=..150,gamemode=adventure] minecraft:weakness 2 255 true
execute as @e[name="spawn"] run effect give @a[distance=..150,gamemode=adventure] minecraft:regeneration 2 255 true
execute as @e[name="spawn"] run effect give @a[distance=..150,gamemode=adventure] minecraft:saturation 2 255 true

execute if score timer gamemodeStart > negative-one number run function kitpvp:configure/start-timer

# Kill player if they are below y0
execute as @a[scores={playerY=..0}] run kill @s

# Run Menu Triggers
execute as @a unless score @s menuTriggers matches 0 run function kitpvp:configure/menu-triggers

# Run Class Triggers
execute as @a unless score @s classTriggers matches 0 run function kitpvp:configure/class-triggers

# Give Menu Book
execute at @e[name=spawn] run replaceitem entity @a[distance=..150,tag=!noSpawnBooks] hotbar.0 written_book{pages:['["",{"text":"KitPvP Menu","bold":true,"color":"gold"},{"text":"\\n","color":"reset","bold":true},{"text":"Opt Out","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 1"}},{"text":" - ","color":"black","bold":true},{"text":"Opt In","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 2"}},{"text":"\\n\\n","color":"reset","bold":true},{"text":"Join Red Team","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 4"}},{"text":"\\n","color":"reset","bold":true},{"text":"Join Blue Team","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 5"}},{"text":"\\n","color":"reset","bold":true},{"text":"Join Green Team","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 6"}},{"text":"\\n","color":"reset","bold":true},{"text":"Join Yellow Team","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 7"}},{"text":"\\n","color":"reset","bold":true},{"text":"Leave Team","bold":true,"clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 8"}},{"text":"\\n\\n","bold":true},{"text":"Optional Particle Effects","bold":true,"color":"black"},{"text":"\\n","color":"reset","bold":true},{"text":"Disable","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 9"}},{"text":" - ","color":"black","bold":true},{"text":"Enable","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 10"}},{"text":"\\n ","color":"reset"}]'],title:Menu,author:KitPvP}

# Give Class Selection Book
execute at @e[name=spawn] run replaceitem entity @a[distance=..150,tag=!noSpawnBooks] hotbar.1 written_book{pages:['["",{"text":"1 - Scout","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 2"}},{"text":"\\n"},{"text":"2 - Bow Space","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 3"}},{"text":"\\n"},{"text":"3 - Sword Space","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 4"}},{"text":"\\n"},{"text":"4 - Legionnaire","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 5"}},{"text":"\\n"},{"text":"5 - Shieldbearer","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 6"}},{"text":"\\n"},{"text":"6 - Ender Missionary","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 7"}},{"text":"\\n"},{"text":"7 - Hunter","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 8"}},{"text":"\\n"},{"text":"8 - Speedy Gonzales","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 9"}},{"text":"\\n"},{"text":"9 - Gunner","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 10"}},{"text":"\\n"},{"text":"10 - Sniper","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 11"}},{"text":"\\n"},{"text":"11 - Brute","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 12"}},{"text":"\\n"},{"text":"12 - Survivalist","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 13"}},{"text":"\\n"},{"text":"13 - Berserker","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 14"}},{"text":"\\n"},{"text":"14 - Chef","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 15"}}]','["",{"text":"15 - Cowboy","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 16"}},{"text":"\\n"},{"text":"16 - Viking","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 17"}},{"text":"\\n"},{"text":"17 - Seeker","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 18"}},{"text":"\\n"},{"text":"18 - Valkyrie","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 19"}},{"text":"\\n"},{"text":"19 - Rocketeer","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 20"}},{"text":"\\n"},{"text":"20 - Spearman","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 21"}},{"text":"\\n"},{"text":"21 - Pirate","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 22"}}]'],title:"Select Class",author:KitPvP}

# execute at @e[name="spawn"] run replaceitem entity @a[distance=..150,tag=!noSpawnBooks] hotbar.2 written_book{pages:['["",{"text":"Scout","bold":true,"color":"gold"},{"text":"\\nA versatile character that has a jump boost and speed boost, he has an iron sword and regular bow but is low armoured.","color":"reset"}]','["",{"text":"Bow Space","bold":true,"color":"gold"},{"text":"\\nA low armoured character with a bow that has flame on it allowing for a high burst and high dps class.","color":"reset"}]','["",{"text":"Sword Space","bold":true,"color":"gold"},{"text":"\\nA low-medium armoured class that has an iron sword with fire aspect 2 on it allowing for good damage and a strong melee class.","color":"reset"}]','["",{"text":"Legionnaire","bold":true,"color":"gold"},{"text":"\\nA very heavily armoured class with a basic iron sword and slowness 3, allows for a slow but tanky class to beat any 1 vs 1 at close range.","color":"reset"}]','["",{"text":"Shieldbearer","bold":true,"color":"gold"},{"text":"\\nA heavy armoured class that holds a shield in their off hand and has a basic iron sword to be more effective against range classes.","color":"reset"}]','["",{"text":"Ender Missionary","bold":true,"color":"gold"},{"text":"\\nAn average armoured class with a knockback 2 iron axe and an ender pearl which allows you to get a quick and high damage attack before quickly leaving or knocking a player off.","color":"reset"}]','["",{"text":"Hunter","bold":true,"color":"gold"},{"text":"\\nA low-medium armour class with a bow that fires a poison 3 arrow with a duration of 2.25 seconds allowing for a great counter to heavily armoured classes.","color":"reset"}]','["",{"text":"Speedy Gonzales","bold":true,"color":"gold"},{"text":"\\nA fast-moving class who is lightly armoured sporting an iron sword for a quick attack and evading enemy attacks.","color":"reset"}]','["",{"text":"Gunner","bold":true,"color":"gold"},{"text":"\\nA medium-high armoured ranger who is equipped with a crossbow and rocket which allows him to deal area-of-effect damage, however he can self-harm.","color":"reset"}]','["",{"text":"Sniper","bold":true,"color":"gold"},{"text":"\\nA long range low armour class that deals high single shot damage that gives blindness for a short time, however it has a long charge time.","color":"reset"}]','["",{"text":"Brute","bold":true,"color":"gold"},{"text":"\\nAn almost no armour class with resistance and high strength, they have no weapon however can deal high damage with fists making them a vulnerable but strong class.","color":"reset"}]','["",{"text":"Survivalist","bold":true,"color":"gold"},{"text":"\\nStarts off as a low armour class with a stone sword, however for each kill they get buffs (up to 3 at once) which improves his abilities. Examples are resistance, strength, and speed.","color":"reset"}]','["",{"text":"Berserker","bold":true,"color":"gold"},{"text":"\\nA medium armour class with an iron axe who regenerates to full health on a single kill making him perfect for large group fights.","color":"reset"}]','["",{"text":"Chef","bold":true,"color":"gold"},{"text":"\\nThey start of as a mid-low armoured class but with a \\u201cfork\\u201d (trident) that gives a player hit by it hunger 127 meaning that they can not be followed however has to use a \\u201cspoon\\u201d (iron shovel) as a melee weapon.","color":"reset"}]','{"text":"Additionally, they have a bucket of milk as they can affect themselves or remove the effect given to them by another class."}','["",{"text":"Cowboy","bold":true,"color":"gold"},{"text":"\\nA low armoured class with an iron sword and a fishing rod which gives good versatility over taller and open maps, allowing you to inflict environmental damage.","color":"reset"}]','["",{"text":"Viking","bold":true,"color":"gold"},{"text":"\\nA low armoured class with a shield and an iron axe which allows him to be useful against ranged and shielded classes like Shieldbearer or The Juggernaut. ","color":"reset"}]','["",{"text":"Juggernaut","bold":true,"color":"gold"},{"text":"\\nHigh damage high armour class with jump boost 4, a boss class that is used in a separate gamemode as all vs Juggernaut. They gain extra health points based off the number of people they are against. They have a bow that they can use for ranged attacks,","color":"reset"}]','{"text":"a shield to block enemy damage, a netherite sword to deal group damage and an iron axe for single targets/shield breaking."}'],title:"Class Descriptions",author:KitPvP}

scoreboard players set @a[scores={class=0}] class 6

#region Run gamemode setup functions
execute if score gamemode settings matches 1 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/001-lives-s/001-setup
execute if score gamemode settings matches 2 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/101-lives-t/101-setup
execute if score gamemode settings matches 3 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/002-deathmatch-s/002-setup
execute if score gamemode settings matches 4 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/102-deathmatch-t/102-setup
execute if score gamemode settings matches 5 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/201-juggernaut/201-setup
execute if score gamemode settings matches 6 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/202-gungame/202-setup
execute if score gamemode settings matches 7 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/203-elimination/203-setup
#endregion
