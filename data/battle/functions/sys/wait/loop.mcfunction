# 各waitを一括管理
## リタイア判定
function battle:sys/wait/retire

## 残り1チーム以上だったらループ
execute unless score $end _ matches 1 run schedule function battle:sys/wait/loop 1t
execute if score $end _ matches 1 run function battle:sys/priv/end
