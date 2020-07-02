# 次の処理
## 次のチームのチェック
scoreboard players set $end _ 0
function soccer:game/priv/check-team

## チーム選択
function soccer:game/priv/select-team

## 次のチームがいなかったら終了
execute if score $end _ matches 0 run function soccer:term

## 次のチームがいれば再度開始
execute unless score $end _ matches 0 run schedule function soccer:sys/main 3s

## スコアボードを破棄
scoreboard players reset $end _
