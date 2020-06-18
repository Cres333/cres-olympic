# 各waitを一括管理
execute if entity @a[predicate=relay:1,predicate=util:play] run function relay:sys/wait/1
execute if entity @a[predicate=relay:2,predicate=util:play] run function relay:sys/wait/2
execute if entity @a[predicate=relay:3,predicate=util:play] run function relay:sys/wait/3
execute if entity @a[predicate=relay:4,predicate=util:play] run function relay:sys/wait/4

scoreboard players add $time _ 1

## TODO: ブースト処理
## TODO: エフェクト処理

schedule function relay:sys/wait/loop 1t
