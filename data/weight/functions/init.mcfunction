# 初期化
## ゲームモード設定
data merge storage main {game:weight,join:2,team:false,score:point}

## スコア設定
scoreboard objectives add _CLICK minecraft.used:minecraft.carrot_on_a_stick "クリック数"
scoreboard objectives add _LIFE dummy "ライフ"
scoreboard objectives add _SHOW dummy "右クリック連打数"
scoreboard objectives add _ID dummy "背番号"

## フィールド生成
clone 0 1 0 32 8 32 1045 32 -1360

## 説明の呼び出し
data modify storage lang temp merge from storage lange weight
function util:lang/description
