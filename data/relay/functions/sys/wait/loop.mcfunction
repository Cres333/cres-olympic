# 各waitを一括管理
execute if entity @a[predicate=relay:1,predicate=util:play] run function relay:sys/wait/1
execute if entity @a[predicate=relay:2,predicate=util:play] run function relay:sys/wait/2
execute if entity @a[predicate=relay:3,predicate=util:play] run function relay:sys/wait/3
execute if entity @a[predicate=relay:4,predicate=util:play] run function relay:sys/wait/4

## エフェクト処理
function relay:sys/wait/effect

scoreboard players add $time _ 1

## 全員がゴールしたらゲーム終了
execute if score $4 _ matches 1.. unless entity @p[predicate=util:play] run scoreboard players set $end _ 1
execute unless score $end _ matches 1 run schedule function relay:sys/wait/loop 1t
execute if score $end _ matches 1 run function relay:game/end
