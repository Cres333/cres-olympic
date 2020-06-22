# リタイア判定
## 落ちた
execute as @a[predicate=util:play] at @s if block ~ ~-1 ~ barrier run function battle:sys/priv/retire

## 死んだ
execute as @a[predicate=util:play,scores={_DEATH=1..}] run function battle:sys/priv/retire

## ログアウトした
execute as @a[predicate=util:play,scores={_LOG=1..}] run function battle:sys/priv/retire

## エンド判定
scoreboard players set $remain _ 0
scoreboard players operation $remain _ += @a[predicate=util:play] PLAY
execute if score $remain _ matches ..1 run scoreboard players set $end _ 1
