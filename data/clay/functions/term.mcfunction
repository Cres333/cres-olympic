# スコア/メダル計算
function util:score/point

# フィールド削除
fill 1051 32 -1399 1067 35 -1390 air
fill 1051 32 -1354 1067 33 -1338 air

## スコアボード破棄
scoreboard objectives remove _ID
scoreboard objectives remove _KILL

## 次のゲーム
function core:game/next
