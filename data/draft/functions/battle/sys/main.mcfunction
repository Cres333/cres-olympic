# ゲーム開始処理
## 初期化
scoreboard players reset * _DEATH
scoreboard players set $end _ 0

## フィールド処理
function battle:sys/priv/field/1

## エフェクト処理
schedule function battle:sys/wait/effect 1s

## 各waitを作動
function draft:battle/sys/wait/loop
