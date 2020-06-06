# ゲームモード変更
clear @a
gamemode spectator @a

# 拡散TP
spreadplayers 1059 -1346 32 8 false @a
execute as @a at @s run tp @s ~ 50 ~ facing 1059 31 -1346

# 参加者を配置
function weight:ready/tp/play
