## ゲームモード変更
gamemode spectator @a

# フィールド削除
fill 1043 32 -1362 1075 36 -1330 air

## ボスバー
bossbar remove life1
bossbar remove life2
bossbar remove life3
bossbar remove life4
bossbar remove life5
bossbar remove life6
bossbar remove life7
bossbar remove life8

## スコアボード破棄
scoreboard objectives remove _ID
scoreboard objectives remove _EFFECT
scoreboard objectives remove _CLICK
scoreboard objectives remove _LIFE
scoreboard objectives remove _SHOW

## 次のゲーム
function draft:game/next
