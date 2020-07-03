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
execute if block 1058 33 -1347 red_wool if score $remainR _ matches 0 run fill 1037 33 -1368 1058 33 -1347 white_wool
execute if block 1060 33 -1345 blue_wool if score $remainB _ matches 0 run fill 1081 33 -1324 1060 33 -1345 white_wool
execute if block 1058 33 -1345 yellow_wool if score $remainY _ matches 0 run fill 1037 33 -1324 1058 33 -1345 white_wool
execute if block 1060 33 -1347 green_wool if score $remainG _ matches 0 run fill 1081 33 -1368 1060 33 -1347 white_wool
