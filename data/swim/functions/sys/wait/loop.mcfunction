# 各waitを一括管理
execute if entity @a[predicate=swim:1,predicate=util:play] run function swim:sys/wait/1
execute if entity @a[predicate=swim:2,predicate=util:play] run function swim:sys/wait/2
execute if entity @a[predicate=swim:3,predicate=util:play] run function swim:sys/wait/3
execute if entity @a[predicate=swim:4,predicate=util:play] run function swim:sys/wait/4
function swim:sys/wait/cooldown

scoreboard players add $time _ 1

## 全員がゴールしたらゲーム終了
execute if score $4 _ matches 1.. unless entity @p[predicate=util:play] run scoreboard players set $end _ 1
execute unless score $end _ matches 1 run schedule function swim:sys/wait/loop 1t
execute if score $end _ matches 1 run function swim:game/end
