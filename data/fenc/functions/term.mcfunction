# スコア/メダル計算
function util:score/point

# フィールド削除
fill 1056 32 -1368 1062 55 -1324 air

## スコアボード破棄
scoreboard objectives remove _ID
scoreboard objectives remove _GP
scoreboard objectives remove _ATTACK
scoreboard objectives remove _DAMAGE

## 時間変更
time set 6000

# もとに戻す
team modify r friendlyFire false
team modify b friendlyFire false
team modify y friendlyFire false
team modify g friendlyFire false

## 次のゲーム
function core:game/next
