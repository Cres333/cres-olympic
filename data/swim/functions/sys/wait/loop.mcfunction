# 各waitを一括管理
execute if entity @a[predicate=swim:1,predicate=util:play] run function swim:sys/wait/1
execute if entity @a[predicate=swim:2,predicate=util:play] run function swim:sys/wait/2
execute if entity @a[predicate=swim:3,predicate=util:play] run function swim:sys/wait/3
execute if entity @a[predicate=swim:4,predicate=util:play] run function swim:sys/wait/4
function swim:sys/wait/cooldown

scoreboard players add $time _ 1

schedule function swim:sys/wait/loop 1t
