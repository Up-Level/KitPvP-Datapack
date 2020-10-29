kill @a[scores={playerY=..4800,timeAlive=5..},distance=..500,gamemode=adventure]

execute as @a[gamemode=adventure,scores={cdLift=-1,crouchBin=1},x=17999,y=52,z=-4,dx=5,dy=22,dz=1] run function kitpvp:maps/10-house/lift-teleport
execute as @a[gamemode=adventure,scores={cdLift=-1,jumpBin=1},x=17999,y=52,z=-4,dx=5,dy=22,dz=1] run function kitpvp:maps/10-house/lift-teleport

scoreboard players remove @a[scores={cdLift=0..}] cdLift 1
