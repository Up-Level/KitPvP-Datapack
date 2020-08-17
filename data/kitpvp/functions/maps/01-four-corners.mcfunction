# Map 1 - Four Corners

gamerule fallDamage false
time set 6000
tp @e[name="active-map",limit=1] @e[name="map-01",limit=1]
execute positioned -1 128 -1 run effect give @a[distance=..200] night_vision 60 0 true
execute positioned as @e[name=map-01-nono] run spreadplayers -1 -1 30 200 false @a[distance=..9]
