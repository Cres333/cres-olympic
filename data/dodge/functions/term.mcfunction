# スコア/メダル計算
function util:score/point

# フィールド削除
fill 1036 32 -1369 1082 40 -1323 air

## スケジュールを削除
schedule clear dodge:sys/wait/loop

## ゲーム設定を削除
scoreboard objectives remove _R
scoreboard objectives remove _B
scoreboard objectives remove _Y
scoreboard objectives remove _G

## 次のゲーム
function core:game/next
