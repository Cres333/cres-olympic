# 初期化
## 共通処理の初期化
function util:term/reset-common

## ゲームモード設定
data merge storage main {game:weight,join:2,team:false,score:point}

## スコア設定
scoreboard objectives add _CLICK minecraft.used:minecraft.carrot_on_a_stick "クリック数"
scoreboard objectives add _LIFE dummy "ライフ"
scoreboard objectives add _SHOW dummy "右クリック連打数"
scoreboard objectives add _ID dummy "背番号"

## Next: フィールド生成
function weight:init/field
