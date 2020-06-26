# カウントダウン
## カウントを表示する
execute if score $count _ matches 1.. run title @a title {"score": {"name": "$count","objective": "_"},"color":"yellow"}
execute if score $count _ matches 0 run title @a title {"text":"!! START !!","color":"green"}

## カウントを減らす
scoreboard players remove $count _ 1

## カウントが残っているならループする
execute if score $count _ matches 1.. run schedule function fenc:sys/priv/count 1s

## カウントが残っていないなら開始する
execute unless score $count _ matches 1.. run function fenc:sys/priv/start
