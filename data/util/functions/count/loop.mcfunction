# カウントダウン
## カウントを減らす
scoreboard players remove $util:count _ 1
title @a times 0 2 0

## カウントを表示する
execute if score $util:count _ matches 1.. run title @a title {"interpret":true,"storage":"lang","nbt":"util.count.num"}
execute if score $util:count _ matches 0 run title @a title {"interpret":true,"storage":"lang","nbt":"util.count.start"}

## カウントが残っているならループする
execute if score $util:count _ matches 1.. run schedule function util:count/loop 1s

## カウントが残っていないなら開始する
execute unless score $util:count _ matches 1.. run function util:count/return
