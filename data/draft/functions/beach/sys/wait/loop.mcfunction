# ループ処理
## 全ブロックに旗が置かれたか
function beach:sys/wait/banner

## 移動エフェクト
execute as @a[predicate=util:play] at @s run particle minecraft:flame ~ ~ ~ 0.25 0 0.25 0 1

## 決着がついていたらループ
execute if score $end _ matches 0 run schedule function draft:beach/sys/wait/loop 1t
execute if score $end _ matches 1 run function draft:beach/sys/priv/end
