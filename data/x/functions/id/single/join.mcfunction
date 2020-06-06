# 個人戦は原則全員参加なのでIDをそのまま割り振り
execute as @a[scores={ID=0..}] run scoreboard players operation @s JOIN = @s ID

# コールバック呼び出し
function x:id/callback
