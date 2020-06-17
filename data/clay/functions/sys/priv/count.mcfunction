# カウントダウン
## カウントを表示する
title @a times 2 16 2
title @a title {"score": {"name": "$count","objective": "_"},"color":"yellow"}

## カウントを減らす
scoreboard players remove $count _ 1

## カウントが残っているならループする
execute if score $count _ matches 1.. run schedule function clay:sys/priv/count 1s

## カウントが残っていないなら開始する
execute unless score $count _ matches 1.. run function clay:sys/priv/start
