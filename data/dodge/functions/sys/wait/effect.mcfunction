# 禁止エリアへの侵入
execute as @a[team=r,predicate=util:play] at @s unless block ~ 33 ~ #dodge:r run tp @s 1059 34 -1346
execute as @a[team=b,predicate=util:play] at @s unless block ~ 33 ~ #dodge:b run tp @s 1059 34 -1346
execute as @a[team=y,predicate=util:play] at @s unless block ~ 33 ~ #dodge:y run tp @s 1059 34 -1346
execute as @a[team=g,predicate=util:play] at @s unless block ~ 33 ~ #dodge:g run tp @s 1059 34 -1346

## ステンドグラスの中にいる
execute as @a[predicate=util:play] at @s unless block ~ ~ ~ air facing 1059 34 -1346 run tp @s ^ ^ ^1
