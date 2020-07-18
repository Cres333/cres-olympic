# 破壊パーティクル
execute if entity @p[scores={_ID=1,_LIFE=0}] at @e[tag=id.0] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force
execute if entity @p[scores={_ID=2,_LIFE=0}] at @e[tag=id.1] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force
execute if entity @p[scores={_ID=3,_LIFE=0}] at @e[tag=id.2] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force
execute if entity @p[scores={_ID=4,_LIFE=0}] at @e[tag=id.3] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force
execute if entity @p[scores={_ID=5,_LIFE=0}] at @e[tag=id.4] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force
execute if entity @p[scores={_ID=6,_LIFE=0}] at @e[tag=id.5] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force
execute if entity @p[scores={_ID=7,_LIFE=0}] at @e[tag=id.6] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force
execute if entity @p[scores={_ID=8,_LIFE=0}] at @e[tag=id.7] run particle minecraft:lava ~ ~1.5 ~ 0 0 0 0.1 10 force

# 削除
execute if entity @p[scores={_ID=1,_LIFE=0}] run kill @e[tag=id.0]
execute if entity @p[scores={_ID=2,_LIFE=0}] run kill @e[tag=id.1]
execute if entity @p[scores={_ID=3,_LIFE=0}] run kill @e[tag=id.2]
execute if entity @p[scores={_ID=4,_LIFE=0}] run kill @e[tag=id.3]
execute if entity @p[scores={_ID=5,_LIFE=0}] run kill @e[tag=id.4]
execute if entity @p[scores={_ID=6,_LIFE=0}] run kill @e[tag=id.5]
execute if entity @p[scores={_ID=7,_LIFE=0}] run kill @e[tag=id.6]
execute if entity @p[scores={_ID=8,_LIFE=0}] run kill @e[tag=id.7]

# 通知
execute as @a[scores={_LIFE=0}] if score @s _CLICK < $value _CLICK run title @s title {"color":"red","text":"失敗！"}
execute as @a[scores={_LIFE=0}] unless score @s _CLICK < $value _CLICK run title @s title {"color":"red","text":"ライフが無くなった！"}

# 脱落メッセージ
tellraw @a {"interpret":true,"storage":"lang","nbt":"weight.retire"}

## 脱落エフェクト
execute as @a[scores={_LIFE=0}] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 10
execute as @a[scores={_LIFE=0}] at @s run particle minecraft:explosion ~ ~1 ~ 0.2 1 0.2 0.3 5

# スペクテイターにする
gamemode spectator @a[scores={_LIFE=0}]

# ライフが0ならPLAYも0にする
scoreboard players reset @a[scores={_LIFE=0}] PLAY

# ライフのスコアボードから削除
scoreboard players reset @a[scores={_LIFE=0}] _LIFE
