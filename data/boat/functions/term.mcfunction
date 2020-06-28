# スコア/メダル計算
function util:score/point

# フィールド削除
# TODO: フィールド座標
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air
fill 0 0 0 0 0 0 air

## スコアボード破棄
scoreboard objectives remove _ID

## 次のゲーム
function core:game/next
