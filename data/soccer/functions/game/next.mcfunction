# 次の処理
## タイマーの表示を消す
bossbar set time visible false

# TODO: 現在のチームを解体

# TODO: 次のチームを選ぶ

## 次のチームがいなかったら終了
execute if score $nextTeam _ matches 0 run function soccer:term/score

## 次のチームがいれば再度開始
execute unless score $nextTeam _ matches 0 run function soccer:game/start
