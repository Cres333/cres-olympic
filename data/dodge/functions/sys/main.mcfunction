# ゲームの機構
## 初期化
scoreboard players set $end _ 0
scoreboard players set @a[predicate=util:join] PLAY 1

scoreboard players set $r SCORE 0
scoreboard players set $b SCORE 0
scoreboard players set $y SCORE 0
scoreboard players set $g SCORE 0

## TODO: 召喚位置座標
summon armor_stand 0 0 0 {Small:true,Marker:true,NoGravity:true,Invisible:true,Tags:["ball"]}

## カウントダウン開始
scoreboard players set $count _ 5
function dodge:sys/priv/count
