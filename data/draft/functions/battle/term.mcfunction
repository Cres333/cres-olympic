# フィールド削除
fill 1040 32 -1365 1078 51 -1327 air

## スケジュールを削除
schedule clear draft:battle/sys/wait/loop

## ゲーム設定を削除
scoreboard objectives remove _DEATH

## 次のゲーム
function draft:game/next
