# スコア計算
function weight:game/point

# プレイヤー拡散
gamemode spectator @a
spreadplayers 1059 -1346 32 8 false @a
execute as @a at @s run tp @s ~ 50 ~ facing 1059 31 -1346

# フィールド破棄
function weight:term/field

# 終了
function weight:term/end