# 各waitを一括管理
function dodge:sys/wait/retire
function dodge:sys/wait/effect
function dodge:sys/wait/ball

## 残り二人以上だったらループ
scoreboard players set $i _ 0
execute as @a[predicate=util:play] run scoreboard players add $i _ 1

execute unless score $i _ matches ..1 run schedule function draft:dodge/sys/wait/loop 1t
execute if score $i _ matches ..1 run function draft:dodge/sys/priv/end
