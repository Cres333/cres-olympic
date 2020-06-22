# ゲームモード設定
data merge storage main {game:weight,join:2,team:false}

# scoreboard 作成
scoreboard objectives add _CLICK minecraft.used:minecraft.carrot_on_a_stick "クリック数"
scoreboard objectives add _LIFE dummy "ライフ"
scoreboard objectives add _SHOW dummy "右クリック連打数"
scoreboard objectives add _ID dummy "ウェイトリフティングのID"

# scoreboard 初期値設定
scoreboard players set $round _ 0
scoreboard players set $show _ 0

# ready
function weight:ready/x
