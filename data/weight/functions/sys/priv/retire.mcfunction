## 強制リタイア
## 脱落エフェクト
execute as @s at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 10
execute as @s at @s run particle minecraft:explosion ~ ~1 ~ 0.2 1 0.2 0.3 5

# スペクテイターにする
gamemode spectator @s

# ライフが0ならPLAYも0にする
scoreboard players reset @s PLAY

# ライフのスコアボードから削除
scoreboard players reset @s _LIFE
