# メンバー選出
## 初期化
scoreboard objectives add _TICKET dummy
scoreboard players set $team _TICKET 0
execute store result score $teamNum _TICKET run data get storage main teamNum

## 全員をTPさせる
gamemode adventure @a[team=!]
tp @a[team=r] 1004 31 -1468 90 0
tp @a[team=b] 1114 31 -1224 -90 0
tp @a[team=y] 1131 31 -1451 180 0
tp @a[team=g] 987 31 -1241 0 0

## 全員にTicketを渡す
give @a[team=!] paper{key:ticket,display:{Name:'{"text":"参加券"}',Lore:['{"text":"参加券を捨てると参加表明"}']}}
tellraw @a[team=!] {"translate":"[システム] 次の競技に参加する方は、参加券を捨ててください。"}
tellraw @a[team=!] {"translate":"[システム] 参加可能人数は、%s 人です。","with":[{"interpret":true,"nbt":"join","storage":"main"}]}

## TODO: ライトが光るまで待つ

## 人数を設定
execute store result score $num _TICKET run data get storage main join

## ライトが光ったらTicketを捨てた人数をチェックする
scoreboard players reset @a _TICKET
execute if score $team _TICKET matches 1 run scoreboard players set @a[team=red,predicate=!util:has-ticket] _TICKET 1
execute if score $team _TICKET matches 2 run scoreboard players set @a[team=blue,predicate=!util:has-ticket] _TICKET 1
execute if score $team _TICKET matches 3 run scoreboard players set @a[team=yellow,predicate=!util:has-ticket] _TICKET 1
execute if score $team _TICKET matches 4 run scoreboard players set @a[team=green,predicate=!util:has-ticket] _TICKET 1
scoreboard players operation $sum _TICKET += @a[team=!] _TICKET

## 人数が少なかったらエラー
execute if score $sum _TICKET < $num _TICKET run scoreboard players set $check _TICKET 1
execute if score $sum _TICKET = $num _TICKET run scoreboard players set $check _TICKET 2
execute if score $sum _TICKET > $num _TICKET run scoreboard players set $check _TICKET 3

execute if score $check _TICKET matches 1 if score $team _TICKET matches 1 run tellraw @a[team=red] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}
execute if score $check _TICKET matches 1 if score $team _TICKET matches 2 run tellraw @a[team=blue] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}
execute if score $check _TICKET matches 1 if score $team _TICKET matches 3 run tellraw @a[team=yellow] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}
execute if score $check _TICKET matches 1 if score $team _TICKET matches 4 run tellraw @a[team=green] {"interpret":true,"nbt":"util.select.ng","storage":"lang"}

## 人数がジャストだったらOK
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

## 全チームの人数が揃ったら各競技に戻す
execute if score $check _TICKET matches 2..3 run scoreboard players add $sumTeam _TICKET 1
execute if score $sumTeam _TICKET >= $teamNum _TICKET run function util:select/return
