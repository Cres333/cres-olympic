# 参加者チェック
## 初期化
scoreboard players reset @a _TICKET
scoreboard players set $sum _TICKET 0
scoreboard players set $check _TICKET 0

## ライトが光ったらTicketを捨てた人数をチェックする
execute if score $team _TICKET matches 1 run scoreboard players set @a[team=red,predicate=!util:has-ticket] _TICKET 1
execute if score $team _TICKET matches 2 run scoreboard players set @a[team=blue,predicate=!util:has-ticket] _TICKET 1
execute if score $team _TICKET matches 3 run scoreboard players set @a[team=yellow,predicate=!util:has-ticket] _TICKET 1
execute if score $team _TICKET matches 4 run scoreboard players set @a[team=green,predicate=!util:has-ticket] _TICKET 1
scoreboard players operation $sum _TICKET += @a[team=!] _TICKET

## 人数をチェック
execute if score $sum _TICKET < $num _TICKET run scoreboard players set $check _TICKET 1
execute if score $sum _TICKET = $num _TICKET run scoreboard players set $check _TICKET 2
execute if score $sum _TICKET > $num _TICKET run scoreboard players set $check _TICKET 3
execute if score $check _TICKET matches 2..3 run scoreboard players add $teamSum _TICKET 1

## 人数が少なかったらエラー
execute if score $check _TICKET matches 1 if score $team _TICKET matches 1 run tellraw @a[team=red] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}
execute if score $check _TICKET matches 1 if score $team _TICKET matches 2 run tellraw @a[team=blue] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}
execute if score $check _TICKET matches 1 if score $team _TICKET matches 3 run tellraw @a[team=yellow] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}
execute if score $check _TICKET matches 1 if score $team _TICKET matches 4 run tellraw @a[team=green] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}

## 人数がジャストだったら全員を1にする
execute if score $check _TICKET matches 2 run scoreboard players set @a[scores={_TICKET=1}] JOIN 1
execute if score $check _TICKET matches 2 if score $team _TICKET matches 1 run tellraw @a[team=red] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}
execute if score $check _TICKET matches 2 if score $team _TICKET matches 2 run tellraw @a[team=blue] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}
execute if score $check _TICKET matches 2 if score $team _TICKET matches 3 run tellraw @a[team=yellow] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}
execute if score $check _TICKET matches 2 if score $team _TICKET matches 4 run tellraw @a[team=green] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}

## 人数が多かったら参加数が少ない順に追加
## TODO: 少ない順に選出
execute if score $check _TICKET matches 3 if score $team _TICKET matches 1 run tellraw @a[team=red] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}
execute if score $check _TICKET matches 3 if score $team _TICKET matches 2 run tellraw @a[team=blue] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}
execute if score $check _TICKET matches 3 if score $team _TICKET matches 3 run tellraw @a[team=yellow] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}
execute if score $check _TICKET matches 3 if score $team _TICKET matches 4 run tellraw @a[team=green] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}

## チームをリセット
scoreboard players set $team _TICKET 0

## 全チームの人数が揃ったら各競技に戻す
execute if score $teamSum _TICKET >= $teamNum _TICKET run function util:select/return

## 人数が揃っていなかったらライトを待つ
execute unless score $teamSum _TICKET >= $teamNum _TICKET run function util:select/wait/light
