# 各waitを一括管理
function dodge:sys/wait/retire
function dodge:sys/wait/field
function dodge:sys/wait/effect
function dodge:sys/wait/ball

scoreboard players add $time _ 1

## 残り1チーム以上だったらループ
function dodge:sys/wait/remain
execute unless score $end _ matches 1 run schedule function dodge:sys/wait/loop 1t
execute if score $end _ matches 1 run function dodge:game/end
