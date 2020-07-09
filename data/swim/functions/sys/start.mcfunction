# 第一泳者スタート
## フィールド開放 (各チーム)
fill 1063 37 -1311 1062 35 -1311 water
fill 1066 37 -1311 1065 35 -1311 water
fill 1069 37 -1311 1068 35 -1311 water
fill 1072 37 -1311 1071 35 -1311 water

## トライデントの利用回数をリセット
scoreboard players reset * _USE
scoreboard players set @a[predicate=swim:1] _COOL 0

## 槍をセット
give @a[predicate=swim:1] trident{HideFlags:63,Enchantments:[{id:"riptide",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:-1,Operation:1,UUID:[I;1340787862,378685630,-2065001653,-2069322458]}]}

## PLAYに追加
scoreboard players set @a[predicate=swim:1] PLAY 1

## タイマー作動
scoreboard players set $time _ 0

## 各waitを作動
function swim:sys/wait/loop
