# ボール処理
## 雪玉を検出した時の処理
execute if entity @e[type=snowball] if entity @e[tag=ground] run function soccer:sys/priv/detect-snow

## 雪玉が移動している時の処理
execute if entity @e[type=snowball] unless entity @e[tag=ground] run function soccer:sys/wait/snow

## 雪玉が見つからず、ボールが空中にある時の処理
execute unless entity @e[type=snowball] unless entity @e[tag=ground] run function soccer:sys/priv/fall-ball

## ボールを回転させる
execute as @e[tag=ball] at @s run tp @s ~ ~ ~ ~10 ~

## ボールにエフェクトを付ける
execute at @e[tag=ball] run particle happy_villager ~ ~1.5 ~ 0 0 0 0 1 force
