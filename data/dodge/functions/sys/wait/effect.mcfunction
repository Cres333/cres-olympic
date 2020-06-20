# 禁止エリアへの侵入
## TODO: 羊毛の座標
execute as @a[team=r,predicate=util:play] at @s unless block ~ 0 ~ #dodge:r run effect give @s slowness 3 5 true
execute as @a[team=b,predicate=util:play] at @s unless block ~ 0 ~ #dodge:b run effect give @s slowness 3 5 true
execute as @a[team=y,predicate=util:play] at @s unless block ~ 0 ~ #dodge:y run effect give @s slowness 3 5 true
execute as @a[team=g,predicate=util:play] at @s unless block ~ 0 ~ #dodge:g run effect give @s slowness 3 5 true

## ステンドグラスの中にいる
## TODO: 中央の座標
execute as @a[predicate=util:play] at @s unless block ~ ~ ~ air run tp @s 0 0 0
