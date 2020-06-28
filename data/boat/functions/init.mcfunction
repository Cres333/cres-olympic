# 初期化
## ゲームモード設定
data merge storage main {game:boat,join:2,team:false,score:time}

## スコア設定
scoreboard objectives add _ID dummy "背番号"

## フィールド生成
## TODO: フィールド座標
clone 0 0 0 0 0 0 0 0 0
clone 0 0 0 0 0 0 0 0 0
clone 0 0 0 0 0 0 0 0 0
clone 0 0 0 0 0 0 0 0 0

## 説明の呼び出し
data modify storage lang temp merge from storage lange boat
function util:lang/description
