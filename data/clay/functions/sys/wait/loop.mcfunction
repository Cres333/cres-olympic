# 開始処理
## 回数を増やす
scoreboard players add $summon _ 1

## 発射位置をランダムで決定
execute if score $summon _ matches ..10 run function clay:sys/priv/play/random

## クリーパーを召喚する
execute if score $summon _ matches ..10 run function clay:sys/priv/play/summon

## 4秒ごとに繰り返す
execute if score $summon _ matches ..9 run schedule function clay:sys/wait/loop 4s

## 10回やったら終わる
execute unless score $summon _ matches ..9 run schedule function clay:sys/priv/end 4s
