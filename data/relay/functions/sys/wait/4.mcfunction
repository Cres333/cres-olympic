# 第四走者のゴール
## TODO: フィールド座標
## ゴールした走者の選出
scoreboard players set $4 _ 0
execute as @p[scores={_R=4},predicate=util:play] at @s if block ~ 0 ~ yellow_concrete run scoreboard players set $4 _ 1
execute as @p[scores={_B=4},predicate=util:play] at @s if block ~ 0 ~ yellow_concrete run scoreboard players set $4 _ 2
execute as @p[scores={_Y=4},predicate=util:play] at @s if block ~ 0 ~ yellow_concrete run scoreboard players set $4 _ 3
execute as @p[scores={_G=4},predicate=util:play] at @s if block ~ 0 ~ yellow_concrete run scoreboard players set $4 _ 4

## 現在の走者の処理
execute if score $4 _ matches 1 as @p[scores={_R=4}] run function relay:sys/priv/goal
execute if score $4 _ matches 2 as @p[scores={_B=4}] run function relay:sys/priv/goal
execute if score $4 _ matches 3 as @p[scores={_Y=4}] run function relay:sys/priv/goal
execute if score $4 _ matches 4 as @p[scores={_G=4}] run function relay:sys/priv/goal

## チームのポイントをいれる
execute if score $4 _ matches 1 run scoreboard players operation $r SCORE = $time _
execute if score $4 _ matches 2 run scoreboard players operation $b SCORE = $time _
execute if score $4 _ matches 3 run scoreboard players operation $y SCORE = $time _
execute if score $4 _ matches 4 run scoreboard players operation $g SCORE = $time _

## 全員がゴールしたらゲーム終了
execute if score $4 _ matches 1.. unless entity @p[predicate=relay:4,predicate=util:play] run function relay:game/end
