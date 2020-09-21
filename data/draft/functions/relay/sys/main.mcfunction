# ゲームの機構
## 初期化
scoreboard players set $end _ 0
scoreboard players set @a[predicate=util:join] PLAY 1

## エフェクト処理
effect give @a[predicate=util:join] resistance 1000000 100 true

## TP
gamemode adventure @a[predicate=util:play]
tp @a[predicate=util:play] 1099.0 33 -1347.0 180 0

## フィールド開放
fill 1092 33 -1346 1108 37 -1349 air
fill 1026 33 -1346 1010 37 -1343 air

## 各waitを作動
function draft:relay/sys/wait/loop
