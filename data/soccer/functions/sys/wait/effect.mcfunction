# エフェクト処理
## 空腹を無くすエフェクト
effect give @a[predicate=util:play] saturation 1 120 true

## 雪玉などを捨てられなくする処理
execute if entity @e[type=item] run data merge entity @e[limit=1,type=item] {PickupDelay:0s}
