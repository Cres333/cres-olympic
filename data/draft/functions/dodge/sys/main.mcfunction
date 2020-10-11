# ゲームの機構
## 初期化
advancement revoke @a only event:dodge/out
scoreboard players set $end _ 0
scoreboard players set @a[predicate=util:join] PLAY 1

## 耐性付与
effect give @a resistance 1000000 255 true

## 召喚位置座標
summon armor_stand 1059 35 -1346 {Small:true,Marker:true,NoGravity:true,Invisible:true,Tags:["ball"]}

## ガラスリセット
fill 1037 39 -1368 1081 34 -1324 air

## TP
spreadplayers 1059 -1346 3 10 false @a[predicate=util:play]
gamemode adventure @a[predicate=util:play]
execute as @a[predicate=util:play] at @s run tp @s ~ 35 ~ facing 1059 35 -1346

## ボール召喚
function dodge:sys/wait/ball

## 各waitを作動
function draft:dodge/sys/wait/loop
