# ボールの動作
## Fireballがいなかったらアマスタの位置によって召喚
execute unless entity @e[type=fireball] run scoreboard players set $notfound _ 1

## 召喚位置 + 羊毛座標
execute if score $notfound _ matches 1 at @e[tag=ball] if block ~ 33 ~ white_wool run summon fireball 1059 35 -1346 {direction:[0,0,0],power:[0.0,-0.0002,0.0],ExplosionPower:2}
execute if score $notfound _ matches 1 at @e[tag=ball] if block ~ 33 ~ red_wool run summon fireball 1054 35 -1351 {direction:[0,0,0],power:[0.0,-0.0002,0.0],ExplosionPower:2}
execute if score $notfound _ matches 1 at @e[tag=ball] if block ~ 33 ~ blue_wool run summon fireball 1064 35 -1341 {direction:[0,0,0],power:[0.0,-0.0002,0.0],ExplosionPower:2}
execute if score $notfound _ matches 1 at @e[tag=ball] if block ~ 33 ~ yellow_wool run summon fireball 1054 35 -1341 {direction:[0,0,0],power:[0.0,-0.0002,0.0],ExplosionPower:2}
execute if score $notfound _ matches 1 at @e[tag=ball] if block ~ 33 ~ green_wool run summon fireball 1064 35 -1351 {direction:[0,0,0],power:[0.0,-0.0002,0.0],ExplosionPower:2}
execute if score $notfound _ matches 1 as @e[type=fireball] run data modify entity @s power set value [0.0,0.0,0.0]

scoreboard players set $notfound _ 0

## Fireballにアマスタを追従させる
execute as @e[type=fireball,limit=1] at @s run tp @e[tag=ball] ~ 35 ~
