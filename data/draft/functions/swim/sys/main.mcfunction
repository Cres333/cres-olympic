# ゲームの機構
## 初期化
scoreboard players set $end _ 0
scoreboard players set @a[predicate=util:join] PLAY 1

## エフェクト追加
effect give @a[predicate=util:join] water_breathing 1000000 0 true
effect give @a[predicate=util:join] resistance 1000000 100 true

## TP
gamemode adventure @a[predicate=util:play]
tp @a[predicate=util:play] 1063.0 36 -1308 180 0

## フィールド開放
fill 1063 37 -1311 1062 35 -1311 water

## トライデントの利用回数をリセット
scoreboard players reset * _USE
scoreboard players set @a[predicate=util:play] _COOL 0

## 槍をセット
give @a[predicate=util:play] trident{HideFlags:63,Enchantments:[{id:"riptide",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:-1,Operation:1,UUID:[I;0,1,0,1]}]}

## 各waitを作動
function draft:swim/sys/wait/loop
