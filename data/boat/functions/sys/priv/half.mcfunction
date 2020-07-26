#周回チェック(半周)
execute if entity @s[scores={_ROUND=1}] run effect give @a[predicate=util:play,scores={_ROUND=2..}] blindness 5 0
execute if entity @s[scores={_ROUND=3}] run effect give @a[predicate=util:play,scores={_ROUND=4..}] blindness 5 0

## ショートカット封鎖
execute if entity @s[scores={_ROUND=3}] unless entity @p[scores={_ROUND=4..}] run fill 1037 34 -1273 1032 35 -1271 minecraft:dark_prismarine replace minecraft:structure_void

scoreboard players set @s[scores={_ROUND=1}] _ROUND 2
scoreboard players set @s[scores={_ROUND=3}] _ROUND 4
