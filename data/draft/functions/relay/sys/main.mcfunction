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
fill 1095 33 -1349 1105 35 -1349 air replace minecraft:white_stained_glass

## 各waitを作動
function draft:relay/sys/wait/loop
