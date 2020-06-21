# フィールド開放
## 初期化
scoreboard players set $remainR _ 0
scoreboard players set $remainB _ 0
scoreboard players set $remainY _ 0
scoreboard players set $remainG _ 0

## チームの存在チェック
execute if entity @p[team=r,predicate=util:play] run scoreboard players set $remainR _ 1
execute if entity @p[team=b,predicate=util:play] run scoreboard players set $remainB _ 1
execute if entity @p[team=y,predicate=util:play] run scoreboard players set $remainY _ 1
execute if entity @p[team=g,predicate=util:play] run scoreboard players set $remainG _ 1

## いなければフィールド開放
execute unless block 0 0 0 red_wool if score $remainR _ matches 0 run fill 0 0 0 0 0 0 white_wool
execute unless block 0 0 0 blue_wool if score $remainB _ matches 0 run fill 0 0 0 0 0 0 white_wool
execute unless block 0 0 0 yellow_wool if score $remainY _ matches 0 run fill 0 0 0 0 0 0 white_wool
execute unless block 0 0 0 green_wool if score $remainG _ matches 0 run fill 0 0 0 0 0 0 white_wool
