## ゲームモード変更
gamemode spectator @a

# フィールド削除
fill 1043 32 -1362 1075 36 -1330 air

## スコアボード破棄
scoreboard objectives remove _EFFECT
scoreboard objectives remove _CLICK
scoreboard objectives remove _LIFE
scoreboard objectives remove _SHOW

## 次のゲーム
function draft:game/next
