# 人数が多い場合
## 参加数が少ない順に追加
execute if score $num _TICKET matches 1.. run function util:select/priv/check-all
execute if score $num _TICKET matches 2.. run function util:select/priv/check-all
execute if score $num _TICKET matches 3.. run function util:select/priv/check-all
execute if score $num _TICKET matches 4.. run function util:select/priv/check-all

## メッセージを表示
execute if score $team _TICKET matches 1 run tellraw @a[team=r] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}
execute if score $team _TICKET matches 2 run tellraw @a[team=b] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}
execute if score $team _TICKET matches 3 run tellraw @a[team=y] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}
execute if score $team _TICKET matches 4 run tellraw @a[team=g] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}

## チームメンバー確定
scoreboard players add $teamSum _TICKET 1