# 第一泳者スタート
## フィールド開放 (各チーム)
## TODO: フィールド座標
fill 0 0 0 0 0 0 water
fill 0 0 0 0 0 0 water
fill 0 0 0 0 0 0 water
fill 0 0 0 0 0 0 water

## 槍をセット
give @a[predicate=swim:1] trident{HideFlags:1,Enchantments:[{id:"riptide",lvl:1}]}

## タイマー作動
scoreboard players set $time _ 0

## 各waitを作動
function swim:sys/wait/loop
