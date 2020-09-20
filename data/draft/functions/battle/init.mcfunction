## ゲームモード設定
data merge storage main {game:battle}

## scoreboard 作成
scoreboard objectives add _DEATH deathCount "死亡判定"

## フィールド生成
clone 0 42 0 38 61 38 1040 32 -1365 masked normal

## 説明の呼び出し
data modify storage lang temp merge from storage lang battle
function util:lang/description
