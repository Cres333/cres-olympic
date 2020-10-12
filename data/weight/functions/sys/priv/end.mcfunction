# システム終了処理
## スコアボード切り替え
scoreboard objectives setdisplay sidebar _LIFE

## ボスバーを設定
function weight:sys/priv/bar

## ライフが無いプレイヤーがいる
execute if entity @p[scores={_LIFE=0}] run function weight:sys/priv/out

## ライフがある
title @a times 10 80 10
title @a[scores={_LIFE=1..}] title {"color":"red","text":"成功！"}

# クリアしたプレイヤーのスコアを上げる
execute if score $round _ matches 5 as @a[predicate=util:play] run scoreboard players operation @s SCORE += @s _LIFE
execute unless score $round _ matches 5 as @a[predicate=util:play] run scoreboard players add @s SCORE 20

## 金床を破棄
schedule function weight:sys/priv/check/remove_anvil 3s

## 次のラウンド
schedule function weight:game/next 8s
