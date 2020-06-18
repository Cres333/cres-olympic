# ランダムな値を生成
scoreboard players set $random _ 0

execute if predicate util:bit run scoreboard players add $random _ 1
execute if predicate util:bit run scoreboard players add $random _ 2
execute if predicate util:bit run scoreboard players add $random _ 4
execute if predicate util:bit run scoreboard players add $random _ 8

scoreboard players add $random _ 1
