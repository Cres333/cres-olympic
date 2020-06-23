# 次の選手の準備
## アイテム削除
clear @a

## PLAYから除外
scoreboard players reset * PLAY

## 次の選手の選択
function fenc:game/priv/next-player

## 次の選手がいる場合
execute if score $next _ matches 1 run function fenc:sys/main

## 次の選手がいない場合
execute if score $next _ matches 0 run function fenc:term/score
