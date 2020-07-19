#周回チェック(半周)
## 半周ごとにプレゼント
execute if entity @s[scores={_ROUND=1}] run scoreboard players add $1 _ 1
execute if entity @s[scores={_ROUND=3}] run scoreboard players add $3 _ 1

scoreboard players operation @s[scores={_ROUND=1}] _ = $1 _
scoreboard players operation @s[scores={_ROUND=3}] _ = $3 _

function boat:sys/priv/give

scoreboard players set @s[scores={_ROUND=1}] _ROUND 2
scoreboard players set @s[scores={_ROUND=3}] _ROUND 4
