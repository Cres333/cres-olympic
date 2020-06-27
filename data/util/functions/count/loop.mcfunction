# カウントダウン
## カウントを表示する
execute if score $util:count _ matches 1.. run title @a title {"score": {"name": "$util:count","objective": "_"},"color":"yellow"}
execute if score $util:count _ matches 0 run title @a title {"text":"!! START !!","color":"green"}

## カウントを減らす
scoreboard players remove $util:count _ 1

## カウントが残っているならループする
execute if score $util:count _ matches 1.. run schedule function util:count/loop 1s

## カウントが残っていないなら開始する
execute unless score $util:count _ matches 1.. run function util:count/return
