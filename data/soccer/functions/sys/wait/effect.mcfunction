# エフェクト処理
## 空腹を無くすエフェクト
effect give @a[predicate=util:play] saturation 1 120 true

## 雪玉などを捨てられなくする処理
execute if entity @e[type=item] run data merge entity @e[limit=1,type=item] {PickupDelay:0s}

## ボール持っているときはジャンプさせない
execute as @p[scores={_HAS=1}] at @s positioned ~ 34 ~ if entity @s[dy=3] run tp @s ~ 32 ~
