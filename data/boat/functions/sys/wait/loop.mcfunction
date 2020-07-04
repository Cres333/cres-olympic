# ループ処理
## 矢を渡す
function boat:sys/wait/arrows

## ボートから降りたら脱落
execute as @a[predicate=boat:ride] run function boat:sys/priv/out

## 先にゴールした人からポイント
execute as @a[predicate=util:play] at @s if block ~ 35 ~ gold_block run function boat:sys/priv/goal

## 時間経過
scoreboard players add $time _ 1

## 全員がゴールしたらゲーム終了
execute unless entity @p[predicate=util:play] run scoreboard players set $end _ 1
execute if score $end _ matches 0 run schedule function boat:sys/wait/loop 1t
execute if score $end _ matches 1 run function boat:sys/priv/end
