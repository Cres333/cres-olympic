# 各waitを一括管理
function dodge:sys/wait/retire

## TODO: ボールの動作
## TODO: 禁止エリアへの侵入

scoreboard players add $time _ 1

## TODO: 残り1チーム以上だったらループ
schedule function dodge:sys/wait/loop 1t

## TODO: 残り1チーム未満だったら終了
function dodge:game/end
