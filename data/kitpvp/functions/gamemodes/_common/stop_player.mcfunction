scoreboard players set @s killsSinceDeath 0
gamemode adventure @s
clear @s
tp @s @e[name="spawn",limit=1]
effect clear @s

tag @s[tag=livePlayer] remove livePlayer
