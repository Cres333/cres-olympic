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
scoreboard players add @a[predicate=util:play] SCORE 10

## 金床を破棄
schedule function weight:sys/priv/check/remove_anvil 3s

## 次のラウンド
schedule function weight:game/next 8s
