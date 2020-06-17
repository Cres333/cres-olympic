# フィールド削除
# TODO: フィールド座標
## フィールドを読み込み
forceload add 0 0 0 0

## 競技場を削除
fill 0 0 0 0 0 0 air

## フィールドの読み込みを解除
forceload remove 0 0 0 0

## スコアボード破棄
scoreboard objectives remove _ID
scoreboard objectives remove _KILL

## 共通処理をリセット
function util:term/reset-common
