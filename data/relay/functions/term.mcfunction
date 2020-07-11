# スコア/メダル計算
function util:score/point

# フィールド削除
fill 1008 32 -1445 1059 39 -1396 air
fill 1008 32 -1395 1028 40 -1297 air
fill 1008 32 -1296 1059 40 -1248 air
fill 1059 32 -1445 1109 38 -1396 air
fill 1090 32 -1395 1109 38 -1297 air
fill 1059 32 -1296 1109 39 -1247 air

## スケジュールを削除
schedule clear relay:sys/wait/loop

## ゲーム設定を削除
scoreboard objectives remove _R
scoreboard objectives remove _B
scoreboard objectives remove _Y
scoreboard objectives remove _G

## 次のゲーム
function core:game/next
