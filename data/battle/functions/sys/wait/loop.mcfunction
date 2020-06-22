# 各waitを一括管理
## TODO: エフェクト処理

## リタイア判定
function battle:sys/wait/retire

## 残り1チーム以上だったらループ
execute if score $end _ matches 1 run function battle:game/next
execute unless score $end _ matches 1 run schedule function battle:sys/wait/loop 1t
