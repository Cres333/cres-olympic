# 人数がちょうどの場合
## 全員参加
scoreboard players set @a[scores={_TICKET=1}] JOIN 1

## メッセージを表示
execute if score $team _TICKET matches 1 run tellraw @a[team=r] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}
execute if score $team _TICKET matches 2 run tellraw @a[team=b] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}
execute if score $team _TICKET matches 3 run tellraw @a[team=y] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}
execute if score $team _TICKET matches 4 run tellraw @a[team=g] {"interpret":true,"nbt":"util.select.ok","storage":"lang"}

## チームメンバー確定
scoreboard players add $teamSum _TICKET 1
