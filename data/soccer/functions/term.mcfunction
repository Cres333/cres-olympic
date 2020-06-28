# スコア/メダル計算
function util:score/point

# フィールド削除
# TODO: フィールド座標
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air

# ゲーム設定を削除
scoreboard objectives remove _HAS
scoreboard objectives remove _COOL
scoreboard objectives remove _W
scoreboard objectives remove _B
bossbar remove time
data remove storage soccer battle

## 次のゲーム
function core:game/next
