scoreboard players remove timer gamemodeStart 1

execute if score timer gamemodeStart matches 59 run title @a[scores={optIn=1}] title "3"
execute if score timer gamemodeStart matches 59 run playsound minecraft:block.note_block.bit master @a[scores={optIn=1}] 0 65 1000 1000000 1 1

execute if score timer gamemodeStart matches 40 run title @a[scores={optIn=1}] title "2"
execute if score timer gamemodeStart matches 40 run playsound minecraft:block.note_block.bit master @a[scores={optIn=1}] 0 65 1000 1000000 1 1

execute if score timer gamemodeStart matches 20 run title @a[scores={optIn=1}] title "1"
execute if score timer gamemodeStart matches 20 run playsound minecraft:block.note_block.bit master @a[scores={optIn=1}] 0 65 1000 1000000 1 1

execute if score timer gamemodeStart matches 0 run title @a[scores={optIn=1}] title "Go!"
execute if score timer gamemodeStart matches 0 run playsound minecraft:block.note_block.bit master @a[scores={optIn=1}] 0 65 1000 1000000 2 1
execute if score timer gamemodeStart matches 0 run scoreboard players set gamemodeBin settings 1
