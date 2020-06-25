# ループ処理
## 敗北したかチェック
execute as @a[predicate=util:play,scores={_DAMAGE=1..}] run function fenc:sys/priv/lose

## 決着がついていたらループ
execute if score $end _ matches 0 run schedule function fenc:sys/wait/loop 1t
execute if score $end _ matches 1 run function fenc:sys/priv/end
