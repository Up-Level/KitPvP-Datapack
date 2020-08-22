execute if score timer gamemodeStart > negative-one number run function kitpvp:configure/start-timer

# Kill player if they are below y0
execute as @a[scores={playerY=..0}] run kill @s

# Run Menu Triggers
execute as @a unless score @s menuTriggers matches 0 run function kitpvp:configure/menu-triggers

# Run Class Triggers
execute as @a unless score @s classTriggers matches 0 run function kitpvp:configure/class-triggers

execute at @e[name=spawn] as @a[distance=..150] run function kitpvp:runtime-spawn-player

#region Run gamemode setup functions
execute if score gamemode settings matches 1 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/001-lives-s/001-setup
execute if score gamemode settings matches 2 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/101-lives-t/101-setup
execute if score gamemode settings matches 3 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/002-deathmatch-s/002-setup
execute if score gamemode settings matches 4 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/102-deathmatch-t/102-setup
execute if score gamemode settings matches 5 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/201-juggernaut/201-setup
execute if score gamemode settings matches 6 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/202-gungame/202-setup
execute if score gamemode settings matches 7 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/203-elimination/203-setup
execute if score gamemode settings matches 8 if score gamemode-bin settings matches 1 run function kitpvp:gamemodes/204-vip/204-setup
#endregion
