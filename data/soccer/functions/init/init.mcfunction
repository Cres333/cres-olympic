# 初期化
## ゲームモード設定
data merge storage main {game:soccer,join:4}

## scoreboard 作成
scoreboard objectives add _HAS dummy "ボールを持っているプレイヤー"
scoreboard objectives add _COOL dummy "各プレイヤーのクールダウン"
scoreboard objectives add _W dummy "白チームの背番号"
scoreboard objectives add _B dummy "黒チームの背番号"

## scoreboard 初期値設定
scoreboard players reset * SCORE
scoreboard players reset * _
scoreboard players set $stop _ 0
scoreboard players set $w _ 0
scoreboard players set $b _ 0
scoreboard players set $time _ 6000

## bossbar 作成
bossbar add time "残り時間"
bossbar set time color white
bossbar set time style notched_6
bossbar set time players @a
bossbar set time visible false

## Next: フィールド生成
function soccer:init/field
