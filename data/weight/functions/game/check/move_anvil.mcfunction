scoreboard players add $up _CLICK 1

execute as @a[predicate=util:play] if score @s _CLICK >= $up _CLICK run scoreboard players operation @s _SHOW = $up _CLICK

# 金床を連打数に応じて持ち上げる
execute if score @p[scores={JOIN=0,PLAY=1}] _CLICK >= $up _CLICK as @e[tag=join.0,limit=1] at @s run tp @s ~ ~0.2 ~
execute if score @p[scores={JOIN=1,PLAY=1}] _CLICK >= $up _CLICK as @e[tag=join.1,limit=1] at @s run tp @s ~ ~0.2 ~
execute if score @p[scores={JOIN=2,PLAY=1}] _CLICK >= $up _CLICK as @e[tag=join.2,limit=1] at @s run tp @s ~ ~0.2 ~
execute if score @p[scores={JOIN=3,PLAY=1}] _CLICK >= $up _CLICK as @e[tag=join.3,limit=1] at @s run tp @s ~ ~0.2 ~
execute if score @p[scores={JOIN=4,PLAY=1}] _CLICK >= $up _CLICK as @e[tag=join.4,limit=1] at @s run tp @s ~ ~0.2 ~
execute if score @p[scores={JOIN=5,PLAY=1}] _CLICK >= $up _CLICK as @e[tag=join.5,limit=1] at @s run tp @s ~ ~0.2 ~
execute if score @p[scores={JOIN=6,PLAY=1}] _CLICK >= $up _CLICK as @e[tag=join.6,limit=1] at @s run tp @s ~ ~0.2 ~
execute if score @p[scores={JOIN=7,PLAY=1}] _CLICK >= $up _CLICK as @e[tag=join.7,limit=1] at @s run tp @s ~ ~0.2 ~

# パーティクル
execute as @e[tag=anvil] at @s run particle minecraft:totem_of_undying ~ ~1.5 ~ 0.1 0 0.1 0 2

# 80までは繰り返し
execute if score $up _CLICK <= $border _CLICK run schedule function weight:game/check/move_anvil 3t
execute unless score $up _CLICK <= $border _CLICK run function weight:game/check/move_end_anvil
