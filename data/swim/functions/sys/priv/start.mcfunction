# 第一泳者スタート
## フィールド開放 (各チーム)
## TODO: フィールド座標
fill 0 0 0 0 0 0 water
fill 0 0 0 0 0 0 water
fill 0 0 0 0 0 0 water
fill 0 0 0 0 0 0 water

## トライデントの利用回数をリセット
scoreboard players reset * _USE
scoreboard players set @a[predicate=swim:1] _COOL 0

## 槍をセット
give @a[predicate=swim:1] trident{HideFlags:1,Enchantments:[{id:"riptide",lvl:1}]}

## PLAYに追加
scoreboard players set @a[predicate=swim:1] PLAY 1

## タイマー作動
scoreboard players set $time _ 0

## 各waitを作動
function swim:sys/wait/loop
