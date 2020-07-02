# スコア/メダル計算
function util:score/point

# フィールド削除
fill 1043 32 -1362 1075 36 -1330 air

## スコアボード破棄
scoreboard objectives remove _CLICK
scoreboard objectives remove _LIFE
scoreboard objectives remove _SHOW
scoreboard objectives remove _ID

## 次のゲーム
function core:game/next
