# ループ処理
## TODO: 特定のポイントを通ると特殊な矢をゲット(持ってなかったら)

## ボートから降りたら脱落
execute as @a[predicate=boat:ride] run function boat:sys/priv/out

## TODO: 先にゴールした人からポイント

## 全員がゴールしたらゲーム終了
execute unless entity @p[predicate=util:play] run scoreboard players set $end _ 1
execute if score $end _ matches 0 run schedule function boat:sys/wait/loop 1t
execute if score $end _ matches 1 run function boat:sys/priv/end
