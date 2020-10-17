## ゲームモード設定
data merge storage main {game:beach}

## スコア設定
scoreboard objectives add _ID dummy "背番号"
scoreboard objectives add _PLACE used:white_banner "勝ち抜き"

## フィールド生成
clone 20 1 62 52 7 142 1043 32 -1386 masked normal

## 説明の呼び出し
data modify storage lang temp merge from storage lang beach
function util:lang/description
