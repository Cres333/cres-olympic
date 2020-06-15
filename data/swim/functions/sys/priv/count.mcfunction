# カウントダウン
## 各プレイヤーの順番を表示
execute if score $count _ matches 1.. run title @a[predicate=swim:1] subtitle {"interpret":true,"nbt":"swim.player[1]","storage":"lang"}
execute if score $count _ matches 1.. run title @a[predicate=swim:2] subtitle {"interpret":true,"nbt":"swim.player[2]","storage":"lang"}
execute if score $count _ matches 1.. run title @a[predicate=swim:3] subtitle {"interpret":true,"nbt":"swim.player[3]","storage":"lang"}
execute if score $count _ matches 1.. run title @a[predicate=swim:4] subtitle {"interpret":true,"nbt":"swim.player[4]","storage":"lang"}

## カウントを表示する
execute if score $count _ matches 1.. run title @a title {"score": {"name": "$count","objective": "_"},"color":"yellow"}
execute if score $count _ matches 0 run title @a[predicate=swim:1] title {"text":"!! START !!","color":"green"}

## カウントを減らす
scoreboard players remove $count _ 1

## カウントが残っているならループする
execute if score $count _ matches 1.. run schedule function swim:sys/priv/count 1s

## カウントが残っていないなら開始する
execute unless score $count _ matches 1.. run function swim:sys/priv/start
