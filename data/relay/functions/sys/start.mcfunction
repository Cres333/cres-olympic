# 第一走者スタート
## フィールド開放 (各チーム)
fill 1095 33 -1349 1105 35 -1349 air replace minecraft:white_stained_glass

## スタートのメッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"relay.start.all"}

## PLAYに追加
scoreboard players set @a[predicate=relay:1] PLAY 1

## 選手表示
scoreboard players set @a[predicate=relay:1] _LIST 1
scoreboard objectives setdisplay sidebar _LIST

## タイマー作動
scoreboard players set $time _ 0

## 各waitを作動
function relay:sys/wait/loop
