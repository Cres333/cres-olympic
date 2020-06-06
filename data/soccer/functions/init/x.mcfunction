# ゲームモード設定
data modify storage main game set value soccer
data modify storage main join set value 4

# scoreboard 作成
scoreboard objectives add _HAS dummy "ボールを持っているプレイヤー"
scoreboard objectives add _COOL dummy "各プレイヤーのクールダウン"
scoreboard objectives add _W dummy "白チームの背番号"
scoreboard objectives add _B dummy "黒チームの背番号"

# scoreboard 初期値設定
scoreboard players reset * SCORE
scoreboard players reset * _
scoreboard players set $stop _ 0
scoreboard players set $w _ 0
scoreboard players set $b _ 0

# ready
function soccer:ready/x
