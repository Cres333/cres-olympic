# スコアボード非表示
scoreboard objectives setdisplay sidebar _SHOW
scoreboard objectives setdisplay sidebar _LIFE

# 毎ラウンド自動的にポイント加算
scoreboard players add @a[predicate=util:play] SCORE 10

# 初期化
scoreboard players set $count _ 3

# ラウンドを加算
scoreboard players add $round _ 1

# ラウンドを表示
title @a title [{"text":"第"},{"score":{"name":"$round","objective":"_"}},{"text":"試合"}]

# カウントダウン開始
schedule function weight:game/play/x 5s
