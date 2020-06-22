# プレイヤー処理
## ボールが地面にある時、持っているプレイヤーがいなかったら、ボールをもたせる
execute unless entity @p[scores={_HAS=1}] as @e[tag=ground] at @s positioned ~ ~1.5 ~ run function soccer:sys/priv/has

## ボールを持っているプレイヤーがいたら、ゴール判定
execute if entity @p[scores={_HAS=1}] run function soccer:sys/priv/goal/check-direct

## ボールを持っているプレイヤーが叩かれたら、ボールを落とす
execute as @p[scores={_HAS=1},predicate=soccer:attack] run function soccer:sys/priv/drop

## ボールを持っているプレイヤーがいたら、ボールを追っかけさせる
execute as @p[scores={_HAS=1}] at @s positioned ^ ^ ^2 run tp @e[tag=ground] ~ 30.7 ~
