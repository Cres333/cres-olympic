#周回チェック(一周)
## 半周ごとにプレゼント
execute if entity @s[scores={_ROUND=2}] run scoreboard players add $2 _ 1
scoreboard players operation @s[scores={_ROUND=2}] _ = $2 _
function boat:sys/priv/give

## 一周目のメッセージ
execute if entity @s[scores={_ROUND=2}] run tellraw @a {"interpret":true,"storage":"lang","nbt":"boat.full.single"}

scoreboard players set @s[scores={_ROUND=2}] _ROUND 3
scoreboard players set @s[scores={_ROUND=4}] _ROUND 5

## 一周して壁がまだあったら、壁を消す
execute unless block 1109 36 -1346 air if entity @s[scores={_ROUND=3}] run fill 1109 36 -1346 1091 38 -1346 air

## 二周したらゴール
execute if entity @s[scores={_ROUND=5}] run function boat:sys/priv/goal
