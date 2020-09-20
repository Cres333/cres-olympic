## エフェクト表示
execute as @a[predicate=util:play,scores={_EFFECT=1..}] at @s run particle minecraft:note ~ ~2.5 ~ 0.2 0 0.2 1 1 force

## ログアウトした
execute as @a[predicate=util:play,scores={_LOG=1..}] run function weight:sys/priv/retire

## ループ
scoreboard players reset * _EFFECT
schedule function weight:sys/wait/loop 1t
