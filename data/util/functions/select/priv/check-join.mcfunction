# 参加者チェック
## 初期化
scoreboard players reset @a _TICKET
scoreboard players set $sum _TICKET 0
scoreboard players set $check _TICKET 0

## ライトが光ったらTicketを捨てた人数をチェックする
execute if score $team _TICKET matches 1 run scoreboard players set @a[team=r,predicate=!util:has-ticket] _TICKET 1
execute if score $team _TICKET matches 2 run scoreboard players set @a[team=b,predicate=!util:has-ticket] _TICKET 1
execute if score $team _TICKET matches 3 run scoreboard players set @a[team=y,predicate=!util:has-ticket] _TICKET 1
execute if score $team _TICKET matches 4 run scoreboard players set @a[team=g,predicate=!util:has-ticket] _TICKET 1
scoreboard players operation $sum _TICKET += @a[team=!] _TICKET

## 参加者チェック
execute if score $sum _TICKET < $num _TICKET run function util:select/priv/less
execute if score $sum _TICKET = $num _TICKET run function util:select/priv/just
execute if score $sum _TICKET > $num _TICKET run function util:select/priv/over

## 全チームの人数が揃ったら各競技に戻す
execute if score $teamSum _TICKET >= $teamNum _TICKET run function util:select/return

## 人数が揃っていなかったらライトを待つ
execute unless score $teamSum _TICKET >= $teamNum _TICKET run function util:select/wait/light
