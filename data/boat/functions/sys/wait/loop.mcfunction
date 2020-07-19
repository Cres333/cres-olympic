# ループ処理
## 矢の判定
execute if entity @e[type=arrow] run function boat:sys/wait/arrow

## ボートから降りたら近くのボートをTP
execute as @a[predicate=boat:ride] at @s run function boat:sys/priv/out

## 周回判定
execute as @a[predicate=util:play] at @s if block ~ 32 ~ emerald_block run function boat:sys/priv/half
execute as @a[predicate=util:play] at @s if block ~ 35 ~ gold_block run function boat:sys/priv/full

## 時間経過
scoreboard players add $time _ 1

## 全員がゴールしたらゲーム終了
execute unless entity @p[predicate=util:play] run scoreboard players set $end _ 1
execute if score $end _ matches 0 run schedule function boat:sys/wait/loop 1t
execute if score $end _ matches 1 run function boat:sys/priv/end
