# 次の選手の準備
## 初期化
scoreboard players set $next _ 1
scoreboard players add $phase _ 1

## 次の選手の選択
function beach:game/priv/next-player

## 次の選手がいる場合
execute if score $next _ matches 1 run function beach:sys/main

## ゲーム終了の場合
execute if score $next _ matches 0 run function beach:term
