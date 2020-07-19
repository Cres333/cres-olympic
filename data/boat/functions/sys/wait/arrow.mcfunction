# 矢の判定
## 不要な矢は削除
kill @e[type=arrow,nbt={inGround:true}]

## 通過したらエフェクト作動
execute as @e[type=arrow] at @s run effect give @a[predicate=util:play,distance=..4,scores={_USED=0}] minecraft:blindness 10 0

## クロスボウを使った人はエフェクト解除
effect clear @a[predicate=util:play,scores={_USED=1..}] minecraft:blindness
scoreboard players set @a[predicate=util:play,scores={_USED=1..}] _USED 0
