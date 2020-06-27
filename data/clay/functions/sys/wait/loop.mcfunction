# 開始処理
## 回数を増やす
scoreboard players add $summon _ 1

## 発射位置をランダムで決定
function clay:sys/priv/play/random

## 豚を召喚する
function clay:sys/priv/play/summon

## 台から降りたら強制終了
execute as @p[predicate=util:play] at @s if block ~ ~-1 ~ red_concrete run function clay:sys/priv/play/error

## 5秒ごとに繰り返す
execute if score $summon _ matches ..9 run schedule function clay:sys/wait/start 5s

## 10回やったら終わる
execute unless score $summon _ matches ..9 run schedule function clay:sys/priv/end 5s
