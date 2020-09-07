#周回チェック(一周)
## 半周ごとにプレゼント
execute if entity @s[scores={_ROUND=2}] run effect give @a[predicate=util:play,scores={_ROUND=3..}] blindness 5 0

## ショートカット開通
execute if entity @s[scores={_ROUND=2}] unless entity @p[scores={_ROUND=3..}] run fill 1037 34 -1273 1032 35 -1271 minecraft:structure_void replace minecraft:dark_prismarine
execute if entity @s[scores={_ROUND=4}] unless entity @p[scores={_ROUND=5..}] run fill 1037 34 -1273 1032 35 -1271 minecraft:structure_void replace minecraft:dark_prismarine

## 一周目のメッセージ
execute if entity @s[scores={_ROUND=2}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"boat.full.single"}

scoreboard players set @s[scores={_ROUND=2}] _ROUND 3
scoreboard players set @s[scores={_ROUND=4}] _ROUND 5

## 一周して壁がまだあったら、壁を消す
execute unless block 1109 36 -1346 air if entity @s[scores={_ROUND=3}] run fill 1109 36 -1346 1091 38 -1346 air

## 二周したらゴール
execute if entity @s[scores={_ROUND=5}] run function boat:sys/priv/goal
