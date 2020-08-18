# Locks the container beneath the executor
data modify block ~ ~-1 ~ "Lock" set value "Locked"
tellraw @s {"text":"The container beneath you has been locked.","color":"gold"}