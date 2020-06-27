# フィールド削除
## 競技場を削除
fill 1045 32 -1332 1073 40 -1360 air

## スコアボード破棄
scoreboard objectives remove _CLICK
scoreboard objectives remove _LIFE
scoreboard objectives remove _SHOW
scoreboard objectives remove _ID

## 共通処理をリセット
function util:term/reset-common
