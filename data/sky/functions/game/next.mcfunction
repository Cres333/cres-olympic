# 次の選手の準備
## 初期化
scoreboard players set $end _ 0

## PLAYがいない
execute unless entity @p[predicate=util:play] run scoreboard players set $end _ 1

## ゲーム終了でない場合
execute if score $end _ matches 0 run function sky:sys/main

## ゲーム終了の場合
execute if score $end _ matches 1 run schedule function sky:term 5s
