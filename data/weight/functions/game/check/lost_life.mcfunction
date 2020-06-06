# 破壊パーティクル
execute if entity @p[scores={JOIN=0,_LIFE=0}] at @e[tag=join.0] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force
execute if entity @p[scores={JOIN=1,_LIFE=0}] at @e[tag=join.1] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force
execute if entity @p[scores={JOIN=2,_LIFE=0}] at @e[tag=join.2] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force
execute if entity @p[scores={JOIN=3,_LIFE=0}] at @e[tag=join.3] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force
execute if entity @p[scores={JOIN=4,_LIFE=0}] at @e[tag=join.4] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force
execute if entity @p[scores={JOIN=5,_LIFE=0}] at @e[tag=join.5] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force
execute if entity @p[scores={JOIN=6,_LIFE=0}] at @e[tag=join.6] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force
execute if entity @p[scores={JOIN=7,_LIFE=0}] at @e[tag=join.7] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force

# 削除
execute if entity @p[scores={JOIN=0,_LIFE=0}] run kill @e[tag=join.0]
execute if entity @p[scores={JOIN=1,_LIFE=0}] run kill @e[tag=join.1]
execute if entity @p[scores={JOIN=2,_LIFE=0}] run kill @e[tag=join.2]
execute if entity @p[scores={JOIN=3,_LIFE=0}] run kill @e[tag=join.3]
execute if entity @p[scores={JOIN=4,_LIFE=0}] run kill @e[tag=join.4]
execute if entity @p[scores={JOIN=5,_LIFE=0}] run kill @e[tag=join.5]
execute if entity @p[scores={JOIN=6,_LIFE=0}] run kill @e[tag=join.6]
execute if entity @p[scores={JOIN=7,_LIFE=0}] run kill @e[tag=join.7]

# 通知
execute as @a[scores={_LIFE=0}] if score @s _CLICK < $value _CLICK run title @s title {"color":"red","text":"失敗！"}
execute as @a[scores={_LIFE=0}] unless score @s _CLICK < $value _CLICK run title @s title {"color":"red","text":"ライフが無くなった！"}

# スペクテイターにする
gamemode spectator @a[scores={_LIFE=0}]

# ライフが0ならPLAYも0にする
scoreboard players set @a[scores={_LIFE=0}] PLAY 0

# ライフのスコアボードから削除
scoreboard players reset @a[scores={_LIFE=0}] _LIFE
