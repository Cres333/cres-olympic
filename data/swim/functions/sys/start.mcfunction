# 第一泳者スタート
## フィールド開放 (各チーム)
fill 1063 37 -1311 1062 35 -1311 water
fill 1066 37 -1311 1065 35 -1311 water
fill 1069 37 -1311 1068 35 -1311 water
fill 1072 37 -1311 1071 35 -1311 water

## 選手表示
scoreboard players set @a[predicate=swim:1] _LIST 1
scoreboard objectives setdisplay sidebar _LIST

## スタートのメッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"swim.start.all"}

## トライデントの利用回数をリセット
scoreboard players reset * _USE
scoreboard players set @a[predicate=swim:1] _COOL 0

## 槍をセット
give @a[predicate=swim:1] trident{HideFlags:63,Enchantments:[{id:"riptide",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:-1,Operation:1,UUID:[I;0,1,0,1]}]}

## PLAYに追加
scoreboard players set @a[predicate=swim:1] PLAY 1

## タイマー作動
scoreboard players set $time _ 0

## 各waitを作動
function swim:sys/wait/loop
