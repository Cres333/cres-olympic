## ランダムに値を決定
function weight:sys/priv/random

## タイトル表示
title @a times 0 80 0
title @a subtitle [{"score":{"name":"$value","objective":"_CLICK"}},{"text":"回、右クリックを連打しろ！"}]
title @a title {"text":"始め！","color":"red"}

## 10秒後にチェック
schedule function draft:weight/sys/priv/check 10s

## エフェクト
scoreboard players reset * _EFFECT
schedule function weight:sys/wait/loop 1t
