# 強制的にプレイヤーを追加
function draft:battle/sys/priv/player

# リタイア判定
## 落ちた
execute as @a[predicate=util:play] at @s if block ~ ~-1 ~ barrier run function battle:sys/priv/retire

## 死んだ
execute as @a[predicate=util:play,scores={_DEATH=1..}] run function battle:sys/priv/retire

# 停止するまで永久ループ
execute if score $end _ matches 0 run schedule function draft:battle/sys/wait/loop 1t
