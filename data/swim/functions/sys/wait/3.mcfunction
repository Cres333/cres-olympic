# 第三泳者のゴール
## ゴールした泳者の選出
scoreboard players set $3 _ 0
execute as @p[scores={_R=3},predicate=util:play] at @s if block ~ 33 ~ yellow_concrete run scoreboard players set $3 _ 1
execute as @p[scores={_B=3},predicate=util:play] at @s if block ~ 33 ~ yellow_concrete run scoreboard players set $3 _ 2
execute as @p[scores={_Y=3},predicate=util:play] at @s if block ~ 33 ~ yellow_concrete run scoreboard players set $3 _ 3
execute as @p[scores={_G=3},predicate=util:play] at @s if block ~ 33 ~ yellow_concrete run scoreboard players set $3 _ 4

## 現在の泳者の処理
execute if score $3 _ matches 1 as @p[scores={_R=3}] run function swim:sys/priv/goal
execute if score $3 _ matches 2 as @p[scores={_B=3}] run function swim:sys/priv/goal
execute if score $3 _ matches 3 as @p[scores={_Y=3}] run function swim:sys/priv/goal
execute if score $3 _ matches 4 as @p[scores={_G=3}] run function swim:sys/priv/goal

## 次の泳者に交代
execute if score $3 _ matches 1 as @p[scores={_R=4}] run function swim:sys/priv/change
execute if score $3 _ matches 2 as @p[scores={_B=4}] run function swim:sys/priv/change
execute if score $3 _ matches 3 as @p[scores={_Y=4}] run function swim:sys/priv/change
execute if score $3 _ matches 4 as @p[scores={_G=4}] run function swim:sys/priv/change

## フィールド開放
execute if score $3 _ matches 1 run fill 1071 37 -1381 1072 35 -1381 water
execute if score $3 _ matches 2 run fill 1068 37 -1381 1069 35 -1381 water
execute if score $3 _ matches 3 run fill 1065 37 -1381 1066 35 -1381 water
execute if score $3 _ matches 4 run fill 1062 37 -1381 1063 35 -1381 water
