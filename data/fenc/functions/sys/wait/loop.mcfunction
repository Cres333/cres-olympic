# ループ処理
## 敗北したかチェック
execute as @p[predicate=util:play,scores={_DAMAGE=1..}] run function fenc:sys/priv/lose

## 決着がついていたらループ
execute if score $end _ matches 0 run schedule function fenc:sys/wait/loop 1t
execute if score $end _ matches 1 run function fenc:sys/wait/bomb
execute if score $end _ matches 1 run schedule function fenc:sys/priv/bomb 2s
