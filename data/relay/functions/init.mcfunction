# 初期化
## ゲームモード設定
data merge storage main {game:relay,join:4,team:true,score:time}

## scoreboard 作成
scoreboard objectives add _R dummy "赤チームの背番号"
scoreboard objectives add _B dummy "青チームの背番号"
scoreboard objectives add _Y dummy "黄チームの背番号"
scoreboard objectives add _G dummy "緑チームの背番号"

## フィールド生成
clone 0 178 0 51 184 49 1008 32 -1445
clone 0 186 0 19 192 98 1009 32 -1395
clone 0 194 0 51 200 49 1008 32 -1297
clone 0 202 0 50 208 49 1059 32 -1444
clone 0 210 0 19 216 98 1090 32 -1395
clone 0 218 0 50 224 49 1059 32 -1296

## 説明の呼び出し
data modify storage lang temp merge from storage lang relay
function util:lang/description
