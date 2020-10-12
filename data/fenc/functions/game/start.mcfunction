# ゲーム開始
## 初期化
scoreboard players set $gp _ 0
scoreboard players set $round _ 1
scoreboard players set $phase _ 0

## 背番号を設定
function fenc:game/priv/setting-number

## 選手を2人選び出す
function fenc:game/next
