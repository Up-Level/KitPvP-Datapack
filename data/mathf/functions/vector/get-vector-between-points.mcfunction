
#> Get Vector between Points
#  Input is as follows:
#  Initial point x (Scale 100) = inp0 mIO
#  Initial point y (Scale 100) = inp1 mIO
#  Initial point z (Scale 100) = inp2 mIO
#  Terminal point x (Scale 100) = inp3 mIO
#  Terminal point y (Scale 100) = inp4 mIO
#  Terminal point z (Scale 100) = inp5 mIO
#  
#  Output is as follows:
#  Vector x (Scale 100) = out0 mIO
#  Vector y (Scale 100) = out1 mIO
#  Vector z (Scale 100) = out2 mIO

scoreboard players operation out0 mIO = inp3 mIO
scoreboard players operation out0 mIO -= inp0 mIO

scoreboard players operation out1 mIO = inp4 mIO
scoreboard players operation out1 mIO -= inp1 mIO

scoreboard players operation out2 mIO = inp5 mIO
scoreboard players operation out2 mIO -= inp2 mIO
