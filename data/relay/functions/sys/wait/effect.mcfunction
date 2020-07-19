# 特殊効果ゾーン
execute as @a[predicate=util:play] at @s if block ~ ~-1 ~ gilded_blackstone run effect give @s blindness 30 1 true
execute as @a[predicate=util:play] at @s if block ~ ~-1 ~ gold_block run effect clear @s blindness

# ブースト処理
execute as @a[predicate=util:play] at @s if block ~ ~-1 ~ diamond_block run effect give @s speed 3 4 true
execute as @a[predicate=util:play] at @s if block ~ ~-1 ~ gold_block run effect give @s speed 3 2 true

## 移動エフェクト
execute as @a[predicate=util:play] at @s run particle minecraft:flame ~ ~ ~ 0.25 0 0.25 0 1
