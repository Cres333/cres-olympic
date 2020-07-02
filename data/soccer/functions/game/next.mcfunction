# 次の処理
## ゲームモードを変更
gamemode spectator @a
kill @e[tag=ball]

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

## 次のチームのチェック
scoreboard players set $nextTeam _ 0
function soccer:game/priv/check-team

## 次のチームがいなかったら終了
execute if score $nextTeam _ matches 0 run function soccer:term

## 次のチームがいれば再度開始
execute unless score $nextTeam _ matches 0 run function soccer:game/priv/select-team
execute unless score $nextTeam _ matches 0 run function soccer:game/priv/setting-position
execute unless score $nextTeam _ matches 0 run schedule function soccer:sys/main 3s

## スコアボードを破棄
scoreboard players reset $nextTeam _
