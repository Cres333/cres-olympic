# 初期化
## ゲームモード設定
data merge storage main {game:dodge,join:3,team:true,score:point}

## scoreboard 作成
scoreboard objectives add _R dummy "赤チームの背番号"
scoreboard objectives add _B dummy "青チームの背番号"
scoreboard objectives add _Y dummy "黄チームの背番号"
scoreboard objectives add _G dummy "緑チームの背番号"

## フィールド生成
clone 0 134 0 46 142 46 1036 32 -1369

## 説明の呼び出し
data modify storage lang temp merge from storage lang dodge
function util:lang/description
