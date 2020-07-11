# スコア/メダル計算
function util:score/point

# フィールド削除
fill 1044 32 -1386 1074 41 -1306 air

## スケジュールを削除
schedule clear swim:sys/wait/loop

## ゲーム設定を削除
scoreboard objectives remove _R
scoreboard objectives remove _B
scoreboard objectives remove _Y
scoreboard objectives remove _G
scoreboard objectives remove _USE
scoreboard objectives remove _COOL

## 次のゲーム
function core:game/next
