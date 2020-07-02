# スコア/メダル計算
function util:score/point

# フィールド削除
fill 1040 32 -1365 1078 51 -1327 air

## スケジュールを削除
schedule clear battle:sys/wait/loop

## ゲーム設定を削除
scoreboard objectives remove _R
scoreboard objectives remove _B
scoreboard objectives remove _Y
scoreboard objectives remove _G
scoreboard objectives remove _DEATH
scoreboard objectives remove _LOG

## 次のゲーム
function core:game/next
