scoreboard players set @s killsSinceDeath 0
gamemode adventure @s
team join none @s
clear @s
effect clear @s
tp @s @e[name="spawn",limit=1]
effect clear @s

bossbar set minecraft:0 players @a[scores={optIn=1}]

tag @s[tag=livePlayer] remove livePlayer
