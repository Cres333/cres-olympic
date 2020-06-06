# 準備
clear @a
gamemode spectator @a

# 拡散tp
spreadplayers 1059 -1346 32 8 false @a
execute as @a at @s run tp @s ~ 50 ~ facing 1059 31 -1346

# フィールド展開
schedule function weight:ready/field 1t

# ゲーム説明
execute store result score $desc _ run data get storage text weight.descNum
function weight:ready/desc
