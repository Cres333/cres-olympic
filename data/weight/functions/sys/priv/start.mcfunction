# システム開始処理
## ランダムに値を決定
function weight:sys/priv/random

## タイトル表示
title @a subtitle [{"score":{"name":"$value","objective":"_CLICK"}},{"text":"回、右クリックを連打しろ！"}]
title @a title {"text":"始め！","color":"red"}

## 10秒後にチェック
schedule function weight:sys/priv/check/check 10s
