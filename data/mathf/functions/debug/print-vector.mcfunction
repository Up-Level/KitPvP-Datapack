
#> Print Vector
#  Input is as follows:
#  Input Vector x (Scale 100) = inp1 mIO
#  Input Vector y (Scale 100) = inp2 mIO
#  Input Vector z (Scale 100) = inp3 mIO

tellraw @a ["Vector: (",{"score":{"name":"inp0","objective":"mIO"}},", ", {"score":{"name":"inp1","objective":"mIO"}},", ", {"score":{"name":"inp2","objective":"mIO"}},")"]
