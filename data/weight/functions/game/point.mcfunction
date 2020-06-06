# ライフが残っているプレイヤーはポイント加算
scoreboard players add @a[scores={_LIFE=1..}] SCORE 10

# 残ライフも加算
execute as @a[scores={_LIFE=1..}] run scoreboard players operation @s SCORE += @s _LIFE

# ポイント計算
function x:point/x
