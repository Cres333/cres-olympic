# 次の選手の準備
## 初期化
scoreboard players set $end _ 0
scoreboard players add $round _ 1

## PLAYがいない
execute unless entity @p[predicate=util:play] run scoreboard players set $end _ 1

## ラウンド回数が6以上
execute if score $round _ matches 6.. run scoreboard players set $end _ 1

## ゲーム終了でない場合
execute if score $end _ matches 0 run function weight:sys/main

## ゲーム終了の場合
execute if score $end _ matches 1 run function weight:term/term
