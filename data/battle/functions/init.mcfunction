# 初期化
## ゲームモード設定
data merge storage main {game:battle,join:0,team:true,score:point}
data modify storage main join merge from storage main minNum

## scoreboard 作成
scoreboard objectives add _R dummy "赤チームの背番号"
scoreboard objectives add _B dummy "青チームの背番号"
scoreboard objectives add _Y dummy "黄チームの背番号"
scoreboard objectives add _G dummy "緑チームの背番号"
scoreboard objectives add _DEATH deathCount "死亡判定"
scoreboard objectives add _LOG custom:leave_game "ログアウト判定"
scoreboard objectives add _WIN dummy {"color":"light_purple","bold":true,"translate":"⇚ %s ⇛","with":[{"text":"連勝数","color":"gold"}]}

scoreboard objectives setdisplay sidebar _WIN

## フィールド生成
clone 0 42 0 38 61 38 1040 32 -1365 masked normal

## 説明の呼び出し
data modify storage lang temp merge from storage lang battle
function util:lang/description
