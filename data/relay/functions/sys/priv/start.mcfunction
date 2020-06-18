# 第一走者スタート
## フィールド開放 (各チーム)
## TODO: フィールド座標
fill 0 0 0 0 0 0 water
fill 0 0 0 0 0 0 water
fill 0 0 0 0 0 0 water
fill 0 0 0 0 0 0 water

## PLAYに追加
scoreboard players set @a[predicate=relay:1] PLAY 1

## タイマー作動
scoreboard players set $time _ 0

## 各waitを作動
function relay:sys/wait/loop
