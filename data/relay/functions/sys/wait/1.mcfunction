# 第一走者のゴール
## TODO: フィールド座標
## ゴールした走者の選出
scoreboard players set $1 _ 0
execute as @p[scores={_R=1},predicate=util:play] at @s if block ~ 0 ~ red_concrete run scoreboard players set $1 _ 1
execute as @p[scores={_B=1},predicate=util:play] at @s if block ~ 0 ~ red_concrete run scoreboard players set $1 _ 2
execute as @p[scores={_Y=1},predicate=util:play] at @s if block ~ 0 ~ red_concrete run scoreboard players set $1 _ 3
execute as @p[scores={_G=1},predicate=util:play] at @s if block ~ 0 ~ red_concrete run scoreboard players set $1 _ 4

## 現在の走者の処理
execute if score $1 _ matches 1 as @p[scores={_R=1}] run function relay:sys/priv/goal
execute if score $1 _ matches 2 as @p[scores={_B=1}] run function relay:sys/priv/goal
execute if score $1 _ matches 3 as @p[scores={_Y=1}] run function relay:sys/priv/goal
execute if score $1 _ matches 4 as @p[scores={_G=1}] run function relay:sys/priv/goal

## 次の走者に交代
execute if score $1 _ matches 1 as @p[scores={_R=2}] run function relay:sys/priv/change
execute if score $1 _ matches 2 as @p[scores={_B=2}] run function relay:sys/priv/change
execute if score $1 _ matches 3 as @p[scores={_Y=2}] run function relay:sys/priv/change
execute if score $1 _ matches 4 as @p[scores={_G=2}] run function relay:sys/priv/change

## 第３走者を配置
execute if score $1 _ matches 1 run gamemode adventure @p[scores={_R=3}]
execute if score $1 _ matches 2 run gamemode adventure @p[scores={_B=3}]
execute if score $1 _ matches 3 run gamemode adventure @p[scores={_Y=3}]
execute if score $1 _ matches 4 run gamemode adventure @p[scores={_G=3}]
## TODO: TP座標
execute if score $1 _ matches 1 run tp @p[scores={_R=3}] 0 0 0 0 0
execute if score $1 _ matches 2 run tp @p[scores={_B=3}] 0 0 0 0 0
execute if score $1 _ matches 3 run tp @p[scores={_Y=3}] 0 0 0 0 0
execute if score $1 _ matches 4 run tp @p[scores={_G=3}] 0 0 0 0 0

## フィールド開放 & 閉鎖
## TODO: フィールド座標
execute if score $1 _ matches 1 run fill 0 0 0 0 0 0 air
execute if score $1 _ matches 2 run fill 0 0 0 0 0 0 air
execute if score $1 _ matches 3 run fill 0 0 0 0 0 0 air
execute if score $1 _ matches 4 run fill 0 0 0 0 0 0 air

execute if score $1 _ matches 1 run fill 0 0 0 0 0 0 white_stained_glass
execute if score $1 _ matches 2 run fill 0 0 0 0 0 0 white_stained_glass
execute if score $1 _ matches 3 run fill 0 0 0 0 0 0 white_stained_glass
execute if score $1 _ matches 4 run fill 0 0 0 0 0 0 white_stained_glass
