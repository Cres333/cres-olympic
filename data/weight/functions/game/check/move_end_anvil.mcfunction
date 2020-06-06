# スコアボード切り替え
scoreboard objectives setdisplay sidebar _LIFE

# ライフが無い
execute if entity @p[scores={_LIFE=0}] run function weight:game/check/lost_life

# ライフがある
title @a[scores={_LIFE=1..}] title {"color":"red","text":"成功！"}

# 金床を破棄
schedule function weight:game/check/remove_anvil 3s

function weight:game/end