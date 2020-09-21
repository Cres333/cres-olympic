scoreboard players add $up _CLICK 1

execute as @a[predicate=util:play] if score @s _CLICK >= $up _CLICK run scoreboard players operation @s _SHOW = $up _CLICK

# 金床を連打数に応じて持ち上げる
execute if score @p[predicate=util:play,scores={_ID=1}] _CLICK >= $up _CLICK as @e[tag=id.0,limit=1] at @s run tp @s ~ ~0.2 ~
execute if score @p[predicate=util:play,scores={_ID=2}] _CLICK >= $up _CLICK as @e[tag=id.1,limit=1] at @s run tp @s ~ ~0.2 ~
execute if score @p[predicate=util:play,scores={_ID=3}] _CLICK >= $up _CLICK as @e[tag=id.2,limit=1] at @s run tp @s ~ ~0.2 ~
execute if score @p[predicate=util:play,scores={_ID=4}] _CLICK >= $up _CLICK as @e[tag=id.3,limit=1] at @s run tp @s ~ ~0.2 ~
execute if score @p[predicate=util:play,scores={_ID=5}] _CLICK >= $up _CLICK as @e[tag=id.4,limit=1] at @s run tp @s ~ ~0.2 ~
execute if score @p[predicate=util:play,scores={_ID=6}] _CLICK >= $up _CLICK as @e[tag=id.5,limit=1] at @s run tp @s ~ ~0.2 ~
execute if score @p[predicate=util:play,scores={_ID=7}] _CLICK >= $up _CLICK as @e[tag=id.6,limit=1] at @s run tp @s ~ ~0.2 ~
execute if score @p[predicate=util:play,scores={_ID=8}] _CLICK >= $up _CLICK as @e[tag=id.7,limit=1] at @s run tp @s ~ ~0.2 ~

# パーティクル
execute as @e[tag=anvil] at @s run particle minecraft:totem_of_undying ~ ~1.5 ~ 0.1 0 0.1 0 2
execute as @a[predicate=util:play] at @s if score @s _CLICK >= $up _CLICK as @e[tag=anvil,limit=1,sort=nearest] at @s run playsound block.chain.break master @a ~ ~ ~ 1 1

# 80までは繰り返し
execute if score $up _CLICK <= $border _CLICK run schedule function draft:weight/sys/priv/move 3t
execute unless score $up _CLICK <= $border _CLICK run function draft:weight/sys/priv/end
