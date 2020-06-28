# 初期化
## ゲームモード設定
data merge storage main {game:relay,join:4,team:true,score:time}

## scoreboard 作成
scoreboard objectives add _R dummy "赤チームの背番号"
scoreboard objectives add _B dummy "青チームの背番号"
scoreboard objectives add _Y dummy "黄チームの背番号"
scoreboard objectives add _G dummy "緑チームの背番号"

## フィールド生成
## TODO: フィールド座標
clone 0 0 0 0 0 0 0 0 0
clone 0 0 0 0 0 0 0 0 0
clone 0 0 0 0 0 0 0 0 0
clone 0 0 0 0 0 0 0 0 0
clone 0 0 0 0 0 0 0 0 0
clone 0 0 0 0 0 0 0 0 0

## 説明の呼び出し
data modify storage lang temp merge from storage lange relay
function util:lang/description
