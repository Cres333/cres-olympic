# ゲームの機構
## 初期化
advancement revoke @a only event:soccer/drop
scoreboard players reset * _HAS
scoreboard players reset * _COOL
scoreboard players set $w _ 0
scoreboard players set $b _ 0
scoreboard players set $time _ 3600
scoreboard players set @a[predicate=util:play] _HAS 0
scoreboard players set @a[predicate=util:play] _COOL 0

bossbar set time color white
execute store result bossbar time max run scoreboard players get $time _
execute store result bossbar time value run scoreboard players get $time _
bossbar set time players @a
bossbar set time visible true

## 選手にユニフォームを着せる
function util:wear/equip

## ポジションTP
function soccer:sys/priv/setting-position

## カウントダウン開始
function util:count/start
