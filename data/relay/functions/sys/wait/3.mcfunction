# 第三走者のゴール
## ゴールした走者の選出
scoreboard players set $3 _ 0
execute as @p[scores={_R=3},predicate=util:play] at @s if block ~ 32 ~ red_concrete run scoreboard players set $3 _ 1
execute as @p[scores={_B=3},predicate=util:play] at @s if block ~ 32 ~ red_concrete run scoreboard players set $3 _ 2
execute as @p[scores={_Y=3},predicate=util:play] at @s if block ~ 32 ~ red_concrete run scoreboard players set $3 _ 3
execute as @p[scores={_G=3},predicate=util:play] at @s if block ~ 32 ~ red_concrete run scoreboard players set $3 _ 4

## 現在の走者の処理
execute if score $3 _ matches 1 as @p[scores={_R=3}] run function relay:sys/priv/goal
execute if score $3 _ matches 2 as @p[scores={_B=3}] run function relay:sys/priv/goal
execute if score $3 _ matches 3 as @p[scores={_Y=3}] run function relay:sys/priv/goal
execute if score $3 _ matches 4 as @p[scores={_G=3}] run function relay:sys/priv/goal

## 次の走者に交代
execute if score $3 _ matches 1 as @p[scores={_R=4}] run function relay:sys/priv/change
execute if score $3 _ matches 2 as @p[scores={_B=4}] run function relay:sys/priv/change
execute if score $3 _ matches 3 as @p[scores={_Y=4}] run function relay:sys/priv/change
execute if score $3 _ matches 4 as @p[scores={_G=4}] run function relay:sys/priv/change

## フィールド開放
execute if score $3 _ matches 1 run fill 1013 33 -1343 1014 35 -1343 air
execute if score $3 _ matches 2 run fill 1016 33 -1343 1017 35 -1343 air
execute if score $3 _ matches 3 run fill 1019 33 -1343 1020 35 -1343 air
execute if score $3 _ matches 4 run fill 1022 33 -1343 1023 35 -1343 air
