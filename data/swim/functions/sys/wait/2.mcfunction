# 第二泳者のゴール
## ゴールした泳者の選出
scoreboard players set $2 _ 0
execute as @p[scores={_R=2},predicate=util:play] at @s if block ~ 33 ~ red_concrete run scoreboard players set $2 _ 1
execute as @p[scores={_B=2},predicate=util:play] at @s if block ~ 33 ~ red_concrete run scoreboard players set $2 _ 2
execute as @p[scores={_Y=2},predicate=util:play] at @s if block ~ 33 ~ red_concrete run scoreboard players set $2 _ 3
execute as @p[scores={_G=2},predicate=util:play] at @s if block ~ 33 ~ red_concrete run scoreboard players set $2 _ 4

## 現在の泳者の処理
execute if score $2 _ matches 1 as @p[scores={_R=2}] run function swim:sys/priv/goal
execute if score $2 _ matches 2 as @p[scores={_B=2}] run function swim:sys/priv/goal
execute if score $2 _ matches 3 as @p[scores={_Y=2}] run function swim:sys/priv/goal
execute if score $2 _ matches 4 as @p[scores={_G=2}] run function swim:sys/priv/goal

## 次の泳者に交代
execute if score $2 _ matches 1 as @p[scores={_R=3}] run function swim:sys/priv/change
execute if score $2 _ matches 2 as @p[scores={_B=3}] run function swim:sys/priv/change
execute if score $2 _ matches 3 as @p[scores={_Y=3}] run function swim:sys/priv/change
execute if score $2 _ matches 4 as @p[scores={_G=3}] run function swim:sys/priv/change

## 第４泳者を配置
execute if score $2 _ matches 1 run gamemode adventure @p[scores={_R=4}]
execute if score $2 _ matches 2 run gamemode adventure @p[scores={_B=4}]
execute if score $2 _ matches 3 run gamemode adventure @p[scores={_Y=4}]
execute if score $2 _ matches 4 run gamemode adventure @p[scores={_G=4}]
execute if score $2 _ matches 1 run tp @p[scores={_R=4}] 1072.0 36 -1383 0 0
execute if score $2 _ matches 2 run tp @p[scores={_B=4}] 1069.0 36 -1383 0 0
execute if score $2 _ matches 3 run tp @p[scores={_Y=4}] 1066.0 36 -1383 0 0
execute if score $2 _ matches 4 run tp @p[scores={_G=4}] 1063.0 36 -1383 0 0

## フィールド開放
execute if score $2 _ matches 1 run fill 1056 37 -1311 1055 35 -1311 water
execute if score $2 _ matches 2 run fill 1053 37 -1311 1052 35 -1311 water
execute if score $2 _ matches 3 run fill 1050 37 -1311 1049 35 -1311 water
execute if score $2 _ matches 4 run fill 1047 37 -1311 1046 35 -1311 water
