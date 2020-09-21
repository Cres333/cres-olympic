## ゲームモード設定
data merge storage main {game:swim}

## scoreboard 作成
scoreboard objectives add _USE used:trident "トライデントの利用フラグ"
scoreboard objectives add _COOL dummy "クールダウンの時間"

## フィールド生成
clone 0 153 0 30 162 41 1044 32 -1386 masked normal
clone 0 165 0 30 174 40 1044 32 -1346 masked normal

## 説明の呼び出し
data modify storage lang temp merge from storage lang swim
function util:lang/description
