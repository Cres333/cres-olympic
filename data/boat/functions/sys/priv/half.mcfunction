#周回チェック(半周)
execute if entity @s[scores={_ROUND=1}] run effect give @a[predicate=util:play,scores={_ROUND=2..}] blindness 5 0
execute if entity @s[scores={_ROUND=3}] run effect give @a[predicate=util:play,scores={_ROUND=4..}] blindness 5 0

scoreboard players set @s[scores={_ROUND=1}] _ROUND 2
scoreboard players set @s[scores={_ROUND=3}] _ROUND 4
