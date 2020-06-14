# フィールド削除
# TODO: フィールド座標
## フィールドを読み込み
forceload add 0 0 0 0

## 白側を削除
fill 0 0 0 0 0 0 air

## 黒側を削除
fill 0 0 0 0 0 0 air

## フィールドの読み込みを解除
forceload remove 0 0 0 0

# ゲーム設定を削除
scoreboard objectives remove _HAS
scoreboard objectives remove _COOL
scoreboard objectives remove _W
scoreboard objectives remove _B
bossbar remove time
data remove storage soccer battle

# 共通処理をリセット
function util:term/reset-common
