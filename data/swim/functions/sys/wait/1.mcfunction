# 第一泳者のゴール
## ゴールした泳者の選出
scoreboard players set $1 _ 0
execute as @p[scores={_R=1},predicate=util:play] at @s if block ~ 33 ~ yellow_concrete run scoreboard players set $1 _ 1
execute as @p[scores={_B=1},predicate=util:play] at @s if block ~ 33 ~ yellow_concrete run scoreboard players set $1 _ 2
execute as @p[scores={_Y=1},predicate=util:play] at @s if block ~ 33 ~ yellow_concrete run scoreboard players set $1 _ 3
execute as @p[scores={_G=1},predicate=util:play] at @s if block ~ 33 ~ yellow_concrete run scoreboard players set $1 _ 4

## 現在の泳者の処理
execute if score $1 _ matches 1 as @p[scores={_R=1}] run function swim:sys/priv/goal
execute if score $1 _ matches 2 as @p[scores={_B=1}] run function swim:sys/priv/goal
execute if score $1 _ matches 3 as @p[scores={_Y=1}] run function swim:sys/priv/goal
execute if score $1 _ matches 4 as @p[scores={_G=1}] run function swim:sys/priv/goal

## 次の泳者に交代
execute if score $1 _ matches 1 as @p[scores={_R=2}] run function swim:sys/priv/change
execute if score $1 _ matches 2 as @p[scores={_B=2}] run function swim:sys/priv/change
execute if score $1 _ matches 3 as @p[scores={_Y=2}] run function swim:sys/priv/change
execute if score $1 _ matches 4 as @p[scores={_G=2}] run function swim:sys/priv/change

## フィールド開放
execute if score $1 _ matches 1 run fill 1046 37 -1381 1047 35 -1381 water
execute if score $1 _ matches 2 run fill 1049 37 -1381 1050 35 -1381 water
execute if score $1 _ matches 3 run fill 1052 37 -1381 1053 35 -1381 water
execute if score $1 _ matches 4 run fill 1055 37 -1381 1056 35 -1381 water
