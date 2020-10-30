# プレイヤー処理
## ボールが地面にある時、持っているプレイヤーがいなかったら、ボールをもたせる
execute unless entity @p[scores={_HAS=1}] as @e[tag=ground] at @s positioned ~ ~1.5 ~ run function soccer:sys/priv/has

## ボールを持っているプレイヤーがいたら、ゴール判定
execute if entity @p[scores={_HAS=1}] run function soccer:sys/priv/goal/check-direct

## ボールを持っているプレイヤーのコーナー判定
# コーナー判定
scoreboard players set $cornor _ 0
execute as @p[scores={_HAS=1}] at @s if block ~ 38 ~ white_stained_glass run scoreboard players set $cornor _ 1
execute as @p[scores={_HAS=1}] at @s if block ~ 38 ~ red_stained_glass run scoreboard players set $cornor _ 2
execute as @p[scores={_HAS=1}] at @s if block ~ 38 ~ orange_stained_glass run scoreboard players set $cornor _ 3

execute if score $cornor _ matches 1.. run function soccer:sys/priv/detect-snow
execute if score $cornor _ matches 1.. run function soccer:sys/priv/cornor
scoreboard players reset $cornor _

## ボールを持っているプレイヤーがいたら、ボールを追っかけさせる
execute as @p[scores={_HAS=1}] at @s positioned ^ ^ ^2 run tp @e[tag=ground] ~ 30.7 ~

## ボールを持っているプレイヤーを表示
execute if entity @p[scores={_HAS=1}] run title @a[gamemode=spectator] actionbar {"interpret":true,"storage":"lang","nbt":"soccer.has"}
