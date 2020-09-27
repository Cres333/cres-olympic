# 初期化
## ゲームモード設定
data merge storage main {game:beach,join:2,team:false,score:point}

## スコア設定
scoreboard objectives add _ID dummy "背番号"
scoreboard objectives add _PLACE used:white_banner {"color":"light_purple","bold":true,"translate":"⇚ %s ⇛","with":[{"text":"勝ち抜き","color":"gold"}]}

## フィールド生成
clone 20 1 62 52 7 105 1043 32 -1368 masked normal

## 説明の呼び出し
data modify storage lang temp merge from storage lang beach
function util:lang/description
