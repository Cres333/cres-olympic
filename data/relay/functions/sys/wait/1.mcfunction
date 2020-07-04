# 第一走者のゴール
## ゴールした走者の選出
scoreboard players set $1 _ 0
execute as @p[scores={_R=1},predicate=util:play] at @s if block ~ 32 ~ red_concrete run scoreboard players set $1 _ 1
execute as @p[scores={_B=1},predicate=util:play] at @s if block ~ 32 ~ red_concrete run scoreboard players set $1 _ 2
execute as @p[scores={_Y=1},predicate=util:play] at @s if block ~ 32 ~ red_concrete run scoreboard players set $1 _ 3
execute as @p[scores={_G=1},predicate=util:play] at @s if block ~ 32 ~ red_concrete run scoreboard players set $1 _ 4

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
execute if score $1 _ matches 1 run tp @p[scores={_R=3}] 1096.0 33 -1347.0 180 0
execute if score $1 _ matches 2 run tp @p[scores={_B=3}] 1099.0 33 -1347.0 180 0
execute if score $1 _ matches 3 run tp @p[scores={_Y=3}] 1102.0 33 -1347.0 180 0
execute if score $1 _ matches 4 run tp @p[scores={_G=3}] 1105.0 33 -1347.0 180 0

## フィールド開放 & 閉鎖
execute if score $1 _ matches 1 run fill 1013 33 -1343 1014 35 -1343 air
execute if score $1 _ matches 2 run fill 1016 33 -1343 1017 35 -1343 air
execute if score $1 _ matches 3 run fill 1019 33 -1343 1020 35 -1343 air
execute if score $1 _ matches 4 run fill 1022 33 -1343 1023 35 -1343 air

execute if score $1 _ matches 1 run fill 1095 33 -1349 1096 35 -1349 white_stained_glass
execute if score $1 _ matches 2 run fill 1098 33 -1349 1099 35 -1349 white_stained_glass
execute if score $1 _ matches 3 run fill 1101 33 -1349 1102 35 -1349 white_stained_glass
execute if score $1 _ matches 4 run fill 1104 33 -1349 1105 35 -1349 white_stained_glass
