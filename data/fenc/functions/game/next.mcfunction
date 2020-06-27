# 次の選手の準備
## 初期化
scoreboard players set $retry _ 0
scoreboard players set $next _ 1

## ラウンドが4以上ならゲーム終了
execute if score $round _ matches 4.. run scoreboard players set $next _ 0

## グループが5以上なら次のラウンドに移行
execute if score $next _ matches 1 if score $gp _ matches 5.. run function fenc:game/priv/next-round

## 次の選手の選択
execute if score $next _ matches 1 run function fenc:game/priv/next-player

## 次の選手がいる場合
execute if score $next _ matches 1 if score $retry _ matches 0 run function fenc:sys/main

## 次の選手がいない場合 (繰り返す)
execute if score $next _ matches 1 if score $retry _ matches 1 run schedule function fenc:game/next 1t

## ゲーム終了の場合
execute if score $next _ matches 0 run function fenc:term/term
