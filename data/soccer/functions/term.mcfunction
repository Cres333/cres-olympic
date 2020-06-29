# スコア/メダル計算
function util:score/point

# フィールド削除
fill 1025 32 -1403 1094 38 -1346 air
fill 1025 32 -1345 1093 38 -1289 air

# ゲーム設定を削除
scoreboard objectives remove _HAS
scoreboard objectives remove _COOL
scoreboard objectives remove _W
scoreboard objectives remove _B
bossbar remove time
data remove storage soccer battle

## 次のゲーム
function core:game/next
