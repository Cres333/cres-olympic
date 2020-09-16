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

execute if score $team _TICKET matches 1 as @p[team=r] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 10
execute if score $team _TICKET matches 2 as @p[team=b] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 10
execute if score $team _TICKET matches 3 as @p[team=y] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 10
execute if score $team _TICKET matches 4 as @p[team=g] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 10

# 下見実行
execute if score $team _TICKET matches 1 run execute as @a[team=r] run function util:spectator/tp
execute if score $team _TICKET matches 2 run execute as @a[team=b] run function util:spectator/tp
execute if score $team _TICKET matches 3 run execute as @a[team=y] run function util:spectator/tp
execute if score $team _TICKET matches 4 run execute as @a[team=g] run function util:spectator/tp

## チームメンバー確定
scoreboard players add $teamSum _TICKET 1
