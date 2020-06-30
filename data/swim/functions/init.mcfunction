# 初期化
## ゲームモード設定
data merge storage main {game:swim,join:4,team:true,score:time}

## scoreboard 作成
scoreboard objectives add _R dummy "赤チームの背番号"
scoreboard objectives add _B dummy "青チームの背番号"
scoreboard objectives add _Y dummy "黄チームの背番号"
scoreboard objectives add _G dummy "緑チームの背番号"
scoreboard objectives add _USE used:trident "トライデントの利用フラグ"
scoreboard objectives add _COOL dummy "クールダウンの時間"

## フィールド生成
clone 0 153 0 30 162 41 1044 32 -1386
clone 0 165 0 30 174 40 1044 32 -1346

## 説明の呼び出し
data modify storage lang temp merge from storage lang swim
function util:lang/description
