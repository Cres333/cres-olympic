# フィールド削除
fill 1044 32 -1386 1074 41 -1346 air
fill 1044 32 -1346 1074 41 -1306 air

## スケジュールを削除
schedule clear swim:sys/wait/loop

## ゲーム設定を削除
scoreboard objectives remove _USE
scoreboard objectives remove _COOL

## 次のゲーム
function draft:game/next
