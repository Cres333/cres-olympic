# ボールの動作
## Fireballがいなかったらアマスタの位置によって召喚
execute unless entity @e[type=fireball] run scoreboard players set $notfound _ 1

## TODO: 召喚位置 + 羊毛座標
execute if score $notfound _ matches 1 at @e[tag=ball] if block ~ 0 ~ white_wool run summon fireball 0 0 0 {direction:[0,0,0],power:[0.0,-0.0002,0.0],ExplosionPower:2}
execute if score $notfound _ matches 1 at @e[tag=ball] if block ~ 0 ~ red_wool run summon fireball 0 0 0 {direction:[0,0,0],power:[0.0,-0.0002,0.0],ExplosionPower:2}
execute if score $notfound _ matches 1 at @e[tag=ball] if block ~ 0 ~ blue_wool run summon fireball 0 0 0 {direction:[0,0,0],power:[0.0,-0.0002,0.0],ExplosionPower:2}
execute if score $notfound _ matches 1 at @e[tag=ball] if block ~ 0 ~ green_wool run summon fireball 0 0 0 {direction:[0,0,0],power:[0.0,-0.0002,0.0],ExplosionPower:2}
execute if score $notfound _ matches 1 at @e[tag=ball] if block ~ 0 ~ yellow_wool run summon fireball 0 0 0 {direction:[0,0,0],power:[0.0,-0.0002,0.0],ExplosionPower:2}

scoreboard players set $notfound _ 0

## Fireballにアマスタを追従させる
tp @e[tag=ball] @e[type=fireball,limit=1]
