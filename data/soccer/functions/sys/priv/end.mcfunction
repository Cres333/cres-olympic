# 終了処理
## ゲームモードを変更
gamemode spectator @a
kill @e[tag=ball]
kill @e[type=snowball]
clear @a

## タイマーの表示を消す
bossbar set time visible false

## 各チームに得点を加算
scoreboard players operation @a[scores={_W=1..}] SCORE += $w _
scoreboard players operation @a[scores={_B=1..}] SCORE += $b _

## 現在のチームを解体
scoreboard players reset * _W
scoreboard players reset * _B
scoreboard players reset * _HAS
scoreboard players reset * _COOL
scoreboard players reset * PLAY

## 次の試合
function soccer:game/next
