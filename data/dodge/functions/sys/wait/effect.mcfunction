# 禁止エリアへの侵入
execute as @a[team=r,predicate=util:play] at @s unless block ~ 33 ~ #dodge:r run effect give @s slowness 3 8 true
execute as @a[team=b,predicate=util:play] at @s unless block ~ 33 ~ #dodge:b run effect give @s slowness 3 8 true
execute as @a[team=y,predicate=util:play] at @s unless block ~ 33 ~ #dodge:y run effect give @s slowness 3 8 true
execute as @a[team=g,predicate=util:play] at @s unless block ~ 33 ~ #dodge:g run effect give @s slowness 3 8 true

execute as @a[team=r,predicate=util:play] at @s unless block ~ 33 ~ #dodge:r run effect give @s blindness 3 0 true
execute as @a[team=b,predicate=util:play] at @s unless block ~ 33 ~ #dodge:b run effect give @s blindness 3 0 true
execute as @a[team=y,predicate=util:play] at @s unless block ~ 33 ~ #dodge:y run effect give @s blindness 3 0 true
execute as @a[team=g,predicate=util:play] at @s unless block ~ 33 ~ #dodge:g run effect give @s blindness 3 0 true

## ステンドグラスの中にいる
execute as @a[predicate=util:play] at @s unless block ~ ~ ~ air run tp @s 1059 34 -1346
