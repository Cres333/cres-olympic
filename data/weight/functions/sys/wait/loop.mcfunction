## エフェクト表示
execute as @a[predicate=util:play,scores={_EFFECT=1..}] at @s run particle minecraft:note ~ ~2 ~ 3 0 0 0.1 0 force

## ループ
scoreboard players reset * _EFFECT
schedule function weight:sys/wait/loop 1t
