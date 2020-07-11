# ゲームの機構
## 初期化
scoreboard players set $time _ 0
scoreboard players set $end _ 0

## 選手にユニフォームを着せる
function util:wear/equip

## 選手をTPする
function boat:sys/priv/setting-position

## 全員に周回数をセットする
scoreboard players set @a[predicate=util:play] _ROUND 1

## ボートを用意する
execute if entity @p[scores={_ID=1}] run summon boat 1094 38 -1350 {Invulnerable:true,Rotation:[-180F,0F]}
execute if entity @p[scores={_ID=2}] run summon boat 1098 38 -1350 {Invulnerable:true,Rotation:[-180F,0F]}
execute if entity @p[scores={_ID=3}] run summon boat 1102 38 -1350 {Invulnerable:true,Rotation:[-180F,0F]}
execute if entity @p[scores={_ID=4}] run summon boat 1106 38 -1350 {Invulnerable:true,Rotation:[-180F,0F]}
execute if entity @p[scores={_ID=5}] run summon boat 1096 38 -1350 {Invulnerable:true,Rotation:[-180F,0F]}
execute if entity @p[scores={_ID=6}] run summon boat 1100 38 -1350 {Invulnerable:true,Rotation:[-180F,0F]}
execute if entity @p[scores={_ID=7}] run summon boat 1104 38 -1350 {Invulnerable:true,Rotation:[-180F,0F]}
execute if entity @p[scores={_ID=8}] run summon boat 1108 38 -1350 {Invulnerable:true,Rotation:[-180F,0F]}

## カウントダウン開始
schedule function util:count/start 5s
