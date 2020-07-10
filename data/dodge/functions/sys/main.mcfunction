# ゲームの機構
## 初期化
scoreboard players set $end _ 0
scoreboard players set @a[predicate=util:join] PLAY 1

scoreboard players set $r SCORE 0
scoreboard players set $b SCORE 0
scoreboard players set $y SCORE 0
scoreboard players set $g SCORE 0

## 選手にユニフォームを着せる
function util:wear/equip

## 耐性付与
effect give @a resistance 1000000 255 true

## 召喚位置座標
summon armor_stand 1059 35 -1346 {Small:true,Marker:true,NoGravity:true,Invisible:true,Tags:["ball"]}

## カウントダウン開始
function util:count/start
