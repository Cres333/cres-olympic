# ゲームの機構
## 初期化
scoreboard players set $end _ 0
scoreboard players reset * _PLACE
scoreboard players set @a[predicate=util:play] _PLACE 0

## 選手にユニフォームを着せる
function util:wear/equip

## 選手をTPする
function beach:sys/priv/setting-position

## 選手に旗を持たせる
give @a[predicate=util:play,team=r] white_banner{CanPlaceOn:["minecraft:bone_block"],BlockEntityTag:{Patterns:[{Pattern:"gra",Color:14}]}}
give @a[predicate=util:play,team=b] white_banner{CanPlaceOn:["minecraft:bone_block"],BlockEntityTag:{Patterns:[{Pattern:"gra",Color:11}]}}
give @a[predicate=util:play,team=y] white_banner{CanPlaceOn:["minecraft:bone_block"],BlockEntityTag:{Patterns:[{Pattern:"gra",Color:4}]}}
give @a[predicate=util:play,team=g] white_banner{CanPlaceOn:["minecraft:bone_block"],BlockEntityTag:{Patterns:[{Pattern:"gra",Color:13}]}}
give @a[predicate=util:play,team=] white_banner{CanPlaceOn:["minecraft:bone_block"],BlockEntityTag:{Patterns:[{Pattern:"gra",Color:15}]}}

## スピード上昇エフェクトをかける
effect give @a[predicate=util:play] speed 100000 5 true

## フィールド変更
function beach:sys/priv/field

## 何回戦かの表示
title @a times 10 80 10
execute if score $round _ matches 1..2 run title @a title {"interpret":true,"storage":"lang","nbt":"beach.round[0]"}
execute if score $round _ matches 3 run title @a title {"interpret":true,"storage":"lang","nbt":"beach.round[1]"}
execute if score $round _ matches 4 run title @a title {"interpret":true,"storage":"lang","nbt":"beach.round[2]"}

## カウントダウン開始
schedule function util:count/start 5s

## カウントダウン中のモーション
schedule function beach:sys/wait/motion 7s
schedule function beach:sys/priv/down 7s
