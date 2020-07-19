# エフェクト処理
## ジャンプした時のエフェクト
execute as @e[predicate=util:play] run effect give @s jump_boost 10 2 true

## 空腹を無くすエフェクト
execute as @e[predicate=util:play] run effect give @s saturation 1 120 true

## 雪玉などを捨てられなくする処理
execute if entity @e[type=snowball] run data merge entity @e[limit=1,type=item] {PickupDelay:0s}
