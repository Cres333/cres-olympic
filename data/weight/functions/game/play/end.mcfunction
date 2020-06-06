# アイテム処理
clear @a minecraft:carrot_on_a_stick
kill @e[type=minecraft:item]

# 文字表示
title @a title {"text":"それまで！","color":"red"}

# n秒後に判定処理
schedule function weight:game/check/x 3s
