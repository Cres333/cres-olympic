# 初期化
## ゲームモード設定
data merge storage main {game:clay,join:2,team:false,score:point}

## スコア設定
scoreboard objectives add _ID dummy "背番号"
scoreboard objectives add _KILL killed:pig "スコア"

## キルカウント表示
scoreboard objectives setdisplay sidebar _KILL

## フィールド生成
clone 0 126 57 40 146 84 1039 32 -1403 masked normal
clone 0 127 14 16 128 30 1051 32 -1354 masked normal

## 説明の呼び出し
data modify storage lang temp merge from storage lang clay
function util:lang/description
