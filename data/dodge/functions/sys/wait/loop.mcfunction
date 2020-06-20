# 各waitを一括管理
function dodge:sys/wait/retire

## TODO: ボールの動作
## TODO: 禁止エリアへの侵入

scoreboard players add $time _ 1

## 残り1チーム以上だったらループ
function dodge:sys/wait/remain
execute if score $end _ matches 1 run function dodge:game/end
execute unless score $end _ matches 1 run schedule function dodge:sys/wait/loop 1t
