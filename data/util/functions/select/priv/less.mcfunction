# 人数が少ない場合
## メッセージを表示
execute if score $team _TICKET matches 1 run tellraw @a[team=red] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}
execute if score $team _TICKET matches 2 run tellraw @a[team=blue] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}
execute if score $team _TICKET matches 3 run tellraw @a[team=yellow] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}
execute if score $team _TICKET matches 4 run tellraw @a[team=green] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}
