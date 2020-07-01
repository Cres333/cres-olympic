# 各競技への戻り
## 終了処理
scoreboard objectives remove _TICKET
clear @a
kill @e[type=item]

## カウントを増やす
scoreboard players add @a[predicate=util:join] COUNT 1

## スコアを追加する
scoreboard players set @a[predicate=util:join] SCORE 0

## スコアをリストに表示する
scoreboard objectives setdisplay list SCORE

## プレイヤーをTP
function util:spectator/tp

## メンバー選出後の戻り
execute if data storage main {game:soccer} run function soccer:game/start
execute if data storage main {game:swim} run function swim:game/start
execute if data storage main {game:clay} run function clay:game/start
execute if data storage main {game:relay} run function relay:game/start
execute if data storage main {game:dodge} run function dodge:game/start
execute if data storage main {game:battle} run function battle:game/start
execute if data storage main {game:fenc} run function fenc:game/start
execute if data storage main {game:boat} run function boat:game/start
