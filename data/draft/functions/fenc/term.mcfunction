# フィールド削除
fill 1056 32 -1368 1062 55 -1324 air

schedule clear draft:fenc/sys/wait/loop

## スコアボード破棄
scoreboard objectives remove _ATTACK
scoreboard objectives remove _DAMAGE
scoreboard objectives remove _LOSER

## 時間変更
time set 6000

## 次のゲーム
function draft:game/next
