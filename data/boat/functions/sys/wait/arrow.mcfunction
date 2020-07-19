# 矢の判定
## 不要な矢は削除
kill @e[type=arrow,nbt={inGround:true}]

## 通過したらエフェクト作動
execute as @e[type=arrow] at @s run effect give @a[predicate=util:play,distance=..3,scores={_USED=1..}] minecraft:blindness 5 0 true

## クロスボウを使った人はエフェクト解除
scoreboard players set @a[predicate=util:play] _USED 0
