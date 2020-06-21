# 各waitを一括管理

## TODO: 残り1チーム以上だったらループ
execute if score $end _ matches 1 run function battle:game/end
execute unless score $end _ matches 1 run schedule function battle:sys/wait/loop 1t
