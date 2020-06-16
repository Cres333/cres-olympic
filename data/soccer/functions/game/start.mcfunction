# ゲーム開始
## スコアボード設定
scoreboard players set $stop _ 0
scoreboard players set $w _ 0
scoreboard players set $b _ 0
scoreboard players set $time _ 3600

## bossbar 設定
bossbar set time players @a
bossbar set time visible true

## プレイヤー関係のスコアボード設定
scoreboard players set @a[predicate=util:play] _COOL 0
scoreboard players set @a[predicate=util:play] _HAS 0

## チームを選択
function soccer:game/priv/select-team

## ゲーム開始
function soccer:sys/main
