# ゲームの機構
## 初期化
scoreboard players set $end _ 0

## 選手にユニフォームを着せる
function util:wear/equip

## 選手をTPする
function weight:sys/priv/setting-position

## ニンジン棒を渡す
give @a[predicate=util:play] minecraft:carrot_on_a_stick

## ラウンド表示
title @a times 10 80 10
title @a title [{"text":"第"},{"score":{"name":"$round","objective":"_"}},{"text":"試合"}]

## カウントダウン開始
schedule function util:count/start 5s
