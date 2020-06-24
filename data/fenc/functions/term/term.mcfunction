# フィールド削除
# TODO: フィールド座標
## 競技場を削除
fill 0 0 0 0 0 0 air

## スコアボード破棄
scoreboard objectives remove _ID
scoreboard objectives remove _GP

## 共通処理をリセット
function util:term/reset-common
