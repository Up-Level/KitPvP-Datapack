
#> Cosine
#  Input (degrees at Scale 100) = inp0 mIO
#  Output (number from 0-1 at Scale 1000) = out0 mIO

scoreboard players operation inp0 mIO *= #-1 const
scoreboard players operation inp0 mIO += #9000 const

function mathf:trig/sin
