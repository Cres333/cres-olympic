# システム終了処理
## スコアボード切り替え
scoreboard objectives setdisplay sidebar _LIFE

## ライフが無いプレイヤーがいる
execute if entity @p[scores={_LIFE=0}] run function weight:sys/priv/out

## ライフがある
title @a[scores={_LIFE=1..}] title {"color":"red","text":"成功！"}

## 金床を破棄
schedule function weight:sys/priv/check/remove_anvil 3s

## 次のラウンド
schedule function weight:game/next 8s
