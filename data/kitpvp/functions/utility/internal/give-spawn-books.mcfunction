
# Give Menu Book
replaceitem entity @s hotbar.0 written_book{CustomModelData:1,pages:['["",{"text":"KitPvP Menu","bold":true,"color":"gold"},{"text":"\\n","color":"reset","bold":true},{"text":"Opt Out","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 1"}},{"text":" - ","color":"black","bold":true},{"text":"Opt In","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 2"}},{"text":"\\n\\n","color":"reset","bold":true},{"text":"Join Red Team","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 4"}},{"text":"\\n","color":"reset","bold":true},{"text":"Join Blue Team","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 5"}},{"text":"\\n","color":"reset","bold":true},{"text":"Join Green Team","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 6"}},{"text":"\\n","color":"reset","bold":true},{"text":"Join Yellow Team","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 7"}},{"text":"\\n","color":"reset","bold":true},{"text":"Leave Team","bold":true,"clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 8"}},{"text":"\\n\\n","bold":true},{"text":"Optional Particles","bold":true,"color":"black"},{"text":"\\n","color":"reset","bold":true},{"text":"Off","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 9"}},{"text":" - ","color":"black","bold":true},{"text":"On","bold":true,"underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger menuTriggers set 10"}},{"text":"\\n\\n","color":"reset"},{"text":"Click here if opped","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s opped 1"},"hoverEvent":{"action":"show_text","contents":"Click here to be given the Admin Menu. (Only works if you are opped)"}}]'],title:Menu,author:KitPvP}

# Give Class Selection Book
replaceitem entity @s hotbar.1 written_book{CustomModelData:2,pages:['["",{"text":"1 - Scout","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 2"}},{"text":"\\n"},{"text":"2 - Bow Space","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 3"}},{"text":"\\n"},{"text":"3 - Sword Space","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 4"}},{"text":"\\n"},{"text":"4 - Legionnaire","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 5"}},{"text":"\\n"},{"text":"5 - Shieldbearer","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 6"}},{"text":"\\n"},{"text":"6 - Ender Missionary","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 7"}},{"text":"\\n"},{"text":"7 - Speedy Gonzales","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 8"}},{"text":"\\n"},{"text":"8 - Gunner","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 9"}},{"text":"\\n"},{"text":"9 - Sniper","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 10"}},{"text":"\\n"},{"text":"10 - Brute","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 11"}},{"text":"\\n"},{"text":"11 - Survivalist","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 12"}},{"text":"\\n"},{"text":"12 - Chef","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 13"}},{"text":"\\n"},{"text":"13 - Totemist","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 14"}},{"text":"\\n"},{"text":"14 - Viking","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 15"}}]','["",{"text":"15 - Seeker","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 16"}},{"text":"\\n"},{"text":"16 - Rocketeer","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 17"}},{"text":"\\n"},{"text":"17 - Pirate","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 18"}},{"text":"\\n"},{"text":"18 - Earthbender","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 19"}},{"text":"\\n"},{"text":"19 - Wizard","clickEvent":{"action":"run_command","value":"/trigger classTriggers set 20"}}]'],title:"Select Class",author:KitPvP}

# Give Admin Menu Book
replaceitem entity @s[scores={opped=1}] hotbar.2 written_book{CustomModelData:3,pages:['["",{"text":"KitPvP Admin Menu","bold":true,"color":"gold"},{"text":"\\n\\n","color":"reset"},{"text":"Select Map ","color":"blue","clickEvent":{"action":"change_page","value":2}},{"text":">>>","bold":true,"color":"blue","clickEvent":{"action":"change_page","value":2}},{"text":"\\n\\n","color":"blue"},{"text":"Select Gamemode ","color":"blue","clickEvent":{"action":"change_page","value":4}},{"text":">>>","bold":true,"color":"blue","clickEvent":{"action":"change_page","value":4}},{"text":"\\n\\n","color":"blue"},{"text":"Start Gamemode","color":"blue","clickEvent":{"action":"run_command","value":"/function kitpvp:configure/start-gamemode"}}]','["",{"text":"Select Map","bold":true,"color":"gold"},{"text":"\\n\\n","color":"reset"},{"text":"Four Corners","clickEvent":{"action":"run_command","value":"/scoreboard players set map settings 1"}},{"text":"\\n"},{"text":"Sheerdrop","clickEvent":{"action":"run_command","value":"/scoreboard players set map settings 2"}},{"text":"\\n"},{"text":"Cargo","clickEvent":{"action":"run_command","value":"/scoreboard players set map settings 3"}},{"text":"\\n"},{"text":"Arena","clickEvent":{"action":"run_command","value":"/scoreboard players set map settings 4"}},{"text":"\\n"},{"text":"Survival Beginnings","clickEvent":{"action":"run_command","value":"/scoreboard players set map settings 5"}},{"text":"\\n"},{"text":"Temple","clickEvent":{"action":"run_command","value":"/scoreboard players set map settings 6"}},{"text":"\\n"},{"text":"Enchanted Forest","clickEvent":{"action":"run_command","value":"/scoreboard players set map settings 7"}},{"text":"\\n"},{"text":"Gulag","clickEvent":{"action":"run_command","value":"/scoreboard players set map settings 8"}},{"text":"\\n"},{"text":"Water Treatment","clickEvent":{"action":"run_command","value":"/scoreboard players set map settings 9"}},{"text":"\\n\\n"},{"text":"Back","underlined":true,"color":"blue","clickEvent":{"action":"change_page","value":1}}]','["",{"text":"Select Map","bold":true,"color":"gold"},{"text":"\\n\\n","color":"reset"},{"text":"House","clickEvent":{"action":"run_command","value":"/scoreboard players set map settings 10"}},{"text":"\\n"},{"text":"KitPvP Classic","clickEvent":{"action":"run_command","value":"/scoreboard players set map settings 11"}},{"text":"\\n"},{"text":"Hangar","clickEvent":{"action":"run_command","value":"/scoreboard players set map settings 12"}},{"text":"\\n\\n\\n\\n\\n\\n\\n\\n"},{"text":"Back","underlined":true,"color":"blue","clickEvent":{"action":"change_page","value":1}}]','["",{"text":"Select Gamemode","bold":true,"color":"gold"},{"text":"\\n\\n","color":"reset"},{"text":"Solo Lives","clickEvent":{"action":"run_command","value":"/scoreboard players set gamemode settings 1"}},{"text":"\\n"},{"text":"Team Lives","clickEvent":{"action":"run_command","value":"/scoreboard players set gamemode settings 2"}},{"text":"\\n"},{"text":"Deathmatch","clickEvent":{"action":"run_command","value":"/scoreboard players set gamemode settings 3"}},{"text":"\\n"},{"text":"Team Deathmatch","clickEvent":{"action":"run_command","value":"/scoreboard players set gamemode settings 4"}},{"text":"\\n"},{"text":"Juggernaut","clickEvent":{"action":"run_command","value":"/scoreboard players set gamemode settings 5"}},{"text":"\\n"},{"text":"Gungame","clickEvent":{"action":"run_command","value":"/scoreboard players set gamemode settings 6"}},{"text":"\\n"},{"text":"Elimination","clickEvent":{"action":"run_command","value":"/scoreboard players set gamemode settings 7"}},{"text":"\\n"},{"text":"VIP","clickEvent":{"action":"run_command","value":"/scoreboard players set gamemode settings 8"}},{"text":"\\n"},{"text":"Infected","clickEvent":{"action":"run_command","value":"/scoreboard players set gamemode settings 9"}},{"text":"\\n\\n"},{"text":"Back","underlined":true,"color":"blue","clickEvent":{"action":"change_page","value":1}}]'],title:"Admin Menu",author:KitPvP}
