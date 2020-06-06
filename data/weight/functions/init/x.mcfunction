# ゲームモード設定
data modify storage main game set value weight
data modify storage main join set value 2

# scoreboard 作成
scoreboard objectives add _CLICK minecraft.used:minecraft.carrot_on_a_stick "クリック数"
scoreboard objectives add _LIFE dummy "ライフ"
scoreboard objectives add _SHOW dummy "右クリック連打数"

# scoreboard 初期値設定
scoreboard players reset * SCORE
scoreboard players reset * _
scoreboard players set $round _ 0
scoreboard players set $show _ 0

# ready
function weight:ready/x
