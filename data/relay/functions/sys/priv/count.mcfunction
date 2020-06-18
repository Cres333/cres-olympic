# カウントダウン
## 各プレイヤーの順番を表示
execute if score $count _ matches 1.. run title @a[predicate=relay:1] subtitle {"interpret":true,"nbt":"relay.player[1]","storage":"lang"}
execute if score $count _ matches 1.. run title @a[predicate=relay:2] subtitle {"interpret":true,"nbt":"relay.player[2]","storage":"lang"}
execute if score $count _ matches 1.. run title @a[predicate=relay:3] subtitle {"interpret":true,"nbt":"relay.player[3]","storage":"lang"}
execute if score $count _ matches 1.. run title @a[predicate=relay:4] subtitle {"interpret":true,"nbt":"relay.player[4]","storage":"lang"}

## カウントを表示する
execute if score $count _ matches 1.. run title @a title {"score": {"name": "$count","objective": "_"},"color":"yellow"}
execute if score $count _ matches 0 run title @a[predicate=relay:1] title {"text":"!! START !!","color":"green"}

## カウントを減らす
scoreboard players remove $count _ 1

## カウントが残っているならループする
execute if score $count _ matches 1.. run schedule function relay:sys/priv/count 1s

## カウントが残っていないなら開始する
execute unless score $count _ matches 1.. run function relay:sys/priv/start
