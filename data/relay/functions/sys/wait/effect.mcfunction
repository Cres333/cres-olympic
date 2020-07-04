# 特殊効果ゾーン
execute as @a[predicate=util:play] at @s if block ~ ~-1 ~ coal_block run effect give @s blindness 5 1 true

# ブースト処理
execute as @a[predicate=util:play] at @s if block ~ ~-1 ~ diamond_block run effect give @s speed 3 4 true
execute as @a[predicate=util:play] at @s if block ~ ~-1 ~ gold_block run effect give @s speed 3 2 true
