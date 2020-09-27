# 初期化
## ゲームモード設定
data merge storage main {game:relay,join:4,team:true,score:time}

## scoreboard 作成
scoreboard objectives add _R dummy "赤チームの背番号"
scoreboard objectives add _B dummy "青チームの背番号"
scoreboard objectives add _Y dummy "黄チームの背番号"
scoreboard objectives add _G dummy "緑チームの背番号"
scoreboard objectives add _LIST dummy {"color":"light_purple","bold":true,"translate":"⇚ %s ⇛","with":[{"text":"選手","color":"gold"}]}

## フィールド生成
clone 0 178 0 51 185 49 1008 32 -1445 masked normal
clone 0 187 0 19 195 98 1009 32 -1395 masked normal
clone 0 197 0 51 205 49 1008 32 -1297 masked normal
clone 0 207 0 50 213 49 1059 32 -1444 masked normal
clone 0 215 0 19 221 98 1090 32 -1395 masked normal
clone 0 223 0 50 230 49 1059 32 -1296 masked normal

## 説明の呼び出し
data modify storage lang temp merge from storage lang relay
function util:lang/description
