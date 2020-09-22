# ゲームの機構
## 初期化
scoreboard players set $end _ 0

## 選手を選ぶ
scoreboard players set @r[predicate=util:join,limit=8] PLAY 1
function beach:game/priv/next-player
scoreboard players set $round _ 4

## 初期化の続き
scoreboard players reset * _PLACE
scoreboard players set @a[predicate=util:play] _PLACE 0

## 選手をTPする
function beach:sys/priv/setting-position

## 向き変更
execute as @a[predicate=util:play] at @s run tp @s ~ ~ ~ 180 0

## 選手に旗を持たせる
give @a[predicate=util:play,team=] white_banner{CanPlaceOn:["minecraft:bone_block"],BlockEntityTag:{Patterns:[{Pattern:"gra",Color:15}]}}

## スピード上昇エフェクトをかける
effect give @a[predicate=util:play] speed 100000 5 true

## フィールド変更
function beach:sys/priv/field

## 壁を破棄
fill 1044 34 -1329 1074 36 -1326 air

function draft:beach/sys/wait/loop
