# 次の処理
## タイマーの表示を消す
bossbar set time visible false

## 現在のチームを解体
scoreboard players reset * _W
scoreboard players reset * _B
scoreboard players reset * PLAY

## TODO: 各チームに得点を加算

## 次のチームのチェック
scoreboard players set $nextTeam _ 0
function soccer:game/priv/check-team

## 次のチームがいなかったら終了
execute if score $nextTeam _ matches 0 run function soccer:term/score

## 次のチームがいれば再度開始
execute unless score $nextTeam _ matches 0 run function soccer:game/start

## スコアボードを破棄
scoreboard players reset $nextTeam _
